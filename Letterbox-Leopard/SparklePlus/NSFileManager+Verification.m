//
//  NSFileManager+Verification.m
//  Sparkle
//
//  Created by Andy Matuschak on 3/16/06.
//  Copyright 2006 Andy Matuschak. All rights reserved.
//

// DSA stuff adapted from code provided by Allan Odgaard. Thanks, Allan!

#import "NSFileManager+Verification.h"
#import "SUUtilities.h"
#import "md5.h"

#import <stdio.h>
#import <openssl/evp.h>
#import <openssl/bio.h>
#import <openssl/pem.h>
#import <openssl/rsa.h>
#import <openssl/sha.h>

int b64decode(unsigned char* str)
{
    unsigned char *cur, *start;
    int d, dlast, phase;
    unsigned char c;
    static int table[256] = {
        -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,  /* 00-0F */
        -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,  /* 10-1F */
        -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,62,-1,-1,-1,63,  /* 20-2F */
        52,53,54,55,56,57,58,59,60,61,-1,-1,-1,-1,-1,-1,  /* 30-3F */
        -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,  /* 40-4F */
        15,16,17,18,19,20,21,22,23,24,25,-1,-1,-1,-1,-1,  /* 50-5F */
        -1,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,  /* 60-6F */
        41,42,43,44,45,46,47,48,49,50,51,-1,-1,-1,-1,-1,  /* 70-7F */
        -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,  /* 80-8F */
        -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,  /* 90-9F */
        -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,  /* A0-AF */
        -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,  /* B0-BF */
        -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,  /* C0-CF */
        -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,  /* D0-DF */
        -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,  /* E0-EF */
        -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1   /* F0-FF */
    };
	
    d = dlast = phase = 0;
    start = str;
    for (cur = str; *cur != '\0'; ++cur )
    {
		if(*cur == '\n' || *cur == '\r'){phase = dlast = 0; continue;}
        d = table[(int)*cur];
        if(d != -1)
        {
            switch(phase)
            {
				case 0:
					++phase;
					break;
				case 1:
					c = ((dlast << 2) | ((d & 0x30) >> 4));
					*str++ = c;
					++phase;
					break;
				case 2:
					c = (((dlast & 0xf) << 4) | ((d & 0x3c) >> 2));
					*str++ = c;
					++phase;
					break;
				case 3:
					c = (((dlast & 0x03 ) << 6) | d);
					*str++ = c;
					phase = 0;
					break;
            }
            dlast = d;
        }
    }
    *str = '\0';
    return str - start;
}

EVP_PKEY* load_dsa_key(char *key)
{
	EVP_PKEY* pkey = NULL;
	BIO *bio;
	if((bio = BIO_new_mem_buf(key, strlen(key))))
	{
		DSA* dsa_key = 0;
		if(PEM_read_bio_DSA_PUBKEY(bio, &dsa_key, NULL, NULL))
		{
			if((pkey = EVP_PKEY_new()))
			{
				if(EVP_PKEY_assign_DSA(pkey, dsa_key) != 1)
				{
					DSA_free(dsa_key);
					EVP_PKEY_free(pkey);
					pkey = NULL;
				}
			}
		}
		BIO_free(bio);
	}
	return pkey;
}

@implementation NSFileManager (SUVerification)

- (BOOL)validatePath:(NSString *)path withMD5Hash:(NSString *)hash
{
	NSData *data = [NSData dataWithContentsOfFile:path];
	if (!data) { return NO; }
	
	md5_state_t md5_state;
	md5_init(&md5_state);
	md5_append(&md5_state, [data bytes], [data length]);
	unsigned char digest[16];
	md5_finish(&md5_state, digest);
	
	int di;
	char hexDigest[32];
	for (di = 0; di < 16; di++)
	    sprintf(hexDigest + di*2, "%02x", digest[di]);
	
	return [hash isEqualToString:[NSString stringWithCString:hexDigest]];
}

- (BOOL)validatePath:(NSString *)path withEncodedDSASignature:(NSString *)encodedSignature
{
	EVP_PKEY* pkey;
	if(!encodedSignature) {
		NSLog(@"ERROR: No encoded signature was provided.");
		return NO;
	}
	
	if (!SUInfoValueForKey(SUPublicDSAKeyKey)) {
		NSLog(@"ERROR: No public key is embedded in the bundle.");
		return NO;
	}
	if (!(pkey = load_dsa_key((char *)[SUInfoValueForKey(SUPublicDSAKeyKey) UTF8String]))) {
		NSLog(@"ERROR: The public key couldn't be loaded.");
		return NO;
	}
	
	// Now, the signature is in base64; we have to decode it into a binary stream.
	unsigned char *signature = (unsigned char *)[encodedSignature UTF8String];
	long length = b64decode(signature);
	
	NSData *pathData = [NSData dataWithContentsOfFile:path];
	if (!pathData) { 
		NSLog(@"ERROR: Empty data at path: %@", path);
		return NO; 
	}
	unsigned char md[SHA_DIGEST_LENGTH];
	SHA1([pathData bytes], [pathData length], md);
	
	
	BOOL res = false;
	EVP_MD_CTX ctx;
	if(EVP_VerifyInit(&ctx, EVP_dss1()) == 1)
	{
		EVP_VerifyUpdate(&ctx, md, SHA_DIGEST_LENGTH);
		res = EVP_VerifyFinal(&ctx, signature, length, pkey) == 1;
	}
	EVP_PKEY_free(pkey);
	return res;
}

@end
