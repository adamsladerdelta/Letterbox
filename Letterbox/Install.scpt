FasdUAS 1.101.10   ��   ��    k             l     �� ��    < 6 Simple installer for "Letterbox" plugin for Mail.app.       	  l     �� 
��   
 < 6 Send suggestions, bug reports, praise, and cookies to    	     l     �� ��      letterbox@         l     �� ��    ) #                software.harnly.net         l     �� ��      � 2006 Aaron Harnly         l     ������  ��        j     �� �� 0 mail_folder_subpath    m         Library:Mail:         j    �� �� 0 plugins_folder_name    m        Bundles         j    ��  �� 0 plugin_filename     m     ! !  Letterbox.mailbundle      " # " l     ������  ��   #  $ % $ j   	 �� &�� 0 announce_intro   & m   	 
 ' ' 0 *Welcome to the Letterbox plugin installer.    %  ( ) ( j    �� *�� 0 announce_quit_mail_warning   * b     + , + b     - . - o    ��
�� 
ret  . m     / / 2 , ** I will have to quit Mail to install. **     , o    ��
�� 
ret  )  0 1 0 j    �� 2�� 0 announce_prompt   2 m     3 3 ! Shall I install the plugin?    1  4 5 4 l     ������  ��   5  6 7 6 j    �� 8�� 0 install_success   8 b     9 : 9 b     ; < ; m     = =  Letterbox is activated.     < o    ��
�� 
ret  : m     > > � �To remove (if you must!), run the installer again and choose 'Uninstall', or simply remove the plugin from ~/Library/Mail/Bundles    7  ? @ ? j    !�� A�� 0 uninstall_success   A m      B B ! Letterbox has been removed.    @  C D C l     ������  ��   D  E F E p   " " G G ������ 	0 debug  ��   F  H I H l     ������  ��   I  J K J l     L�� L r      M N M m     ��
�� boovtrue N o      ���� 	0 debug  ��   K  O P O l     ������  ��   P  Q R Q l   	 S�� S I    	�������� 0 do_announce  ��  ��  ��   R  T U T l     ������  ��   U  V W V l  
  X�� X L   
  Y Y o   
 ���� 	0 debug  ��   W  Z [ Z l     ������  ��   [  \ ] \ l     �� ^��   ^ B < ------- do_announce is the main control sequence ----------    ]  _ ` _ i   " % a b a I      �������� 0 do_announce  ��  ��   b k     � c c  d e d l     �� f��   f &   prepare the installation dialog    e  g h g r      i j i o     ���� 0 announce_intro   j o      ���� 0 announce_text   h  k l k r     m n m n    o p o I   	 �� q���� 0 is_app_running   q  r�� r m   	 
 s s 
 Mail   ��  ��   p  f    	 n o      ���� 0 mail_is_already_running   l  t u t l   ������  ��   u  v w v Z   " x y���� x l    z�� z o    ���� 0 mail_is_already_running  ��   y r     { | { b     } ~ } o    ���� 0 announce_text   ~ o    ���� 0 announce_quit_mail_warning   | o      ���� 0 announce_text  ��  ��   w   �  r   # , � � � b   # * � � � o   # $���� 0 announce_text   � o   $ )���� 0 announce_prompt   � o      ���� 0 announce_text   �  � � � l  - -������  ��   �  � � � l  - -�� ���   � 7 1 show the dialog & let the user choose the action    �  � � � r   - < � � � I  - :�� � �
�� .sysodlogaskr        TEXT � o   - .���� 0 announce_text   � �� � �
�� 
btns � J   / 4 � �  � � � m   / 0 � �  Cancel    �  � � � m   0 1 � �  	Uninstall    �  ��� � m   1 2 � �  Install   ��   � �� ���
�� 
dflt � m   5 6 � �  Install   ��   � o      ���� 0 install_choice_record   �  � � � r   = B � � � l  = @ ��� � n   = @ � � � 1   > @��
�� 
bhit � o   = >���� 0 install_choice_record  ��   � o      ���� 0 install_choice   �  � � � l  C C������  ��   �  � � � l  C C�� ���   � E ? if the user chooses "Cancel", the installer stops immediately.    �  � � � l  C C�� ���   � d ^ the next sequence depends upon what the user chooses, and whether Mail.app is already running    �  � � � l  C C������  ��   �  � � � Z   C V � ����� � l  C D ��� � o   C D���� 0 mail_is_already_running  ��   � k   G R � �  � � � I   G L�������� 0 do_quit  ��  ��   �  ��� � I  M R�� ���
�� .sysodelanull��� ��� nmbr � m   M N���� ��  ��  ��  ��   �  � � � l  W W������  ��   �  � � � Z   W � � � ��� � =  W Z � � � l  W X ��� � o   W X���� 0 install_choice  ��   � m   X Y � �  	Uninstall    � k   ] � � �  � � � n  ] b � � � I   ^ b�������� 0 do_uninstall  ��  ��   �  f   ] ^ �  ��� � Z   c � � ��� � � l  c d ��� � o   c d���� 0 mail_is_already_running  ��   � k   g } � �  � � � n  g l � � � I   h l�������� 0 	do_launch  ��  ��   �  f   g h �  ��� � O  m } � � � I  s |�� ���
�� .sysodlogaskr        TEXT � o   s x���� 0 uninstall_success  ��   � m   m p � ��null     ߀��   Mail.app��]  `�: �h��(���A  T~ �6 H����J���h��T  �����X��|�emal   alis    V  MacBook Pro (OS X)         ��PH+     Mail.app                                                         �L�        ����  	                Applications    �1�      �M*`         (MacBook Pro (OS X):Applications:Mail.app    M a i l . a p p  &  M a c B o o k   P r o   ( O S   X )  Applications/Mail.app   / ��  ��  ��   � I  � ��� ���
�� .sysodlogaskr        TEXT � o   � ����� 0 uninstall_success  ��  ��   �  � � � =  � � � � � l  � � ��� � o   � ����� 0 install_choice  ��   � m   � � � �  Install    �  ��� � k   � � � �  � � � n  � � � � � I   � ��������� 0 do_defaults  ��  ��   �  f   � � �  � � � n  � � � � � I   � �������� 0 
do_install  ��  �   �  f   � � �  ��~ � Z   � � � ��} � � l  � � ��| � o   � ��{�{ 0 mail_is_already_running  �|   � k   � � � �  � � � n  � � � � � I   � ��z�y�x�z 0 	do_launch  �y  �x   �  f   � � �  � � � I  � ��w ��v
�w .sysodelanull��� ��� nmbr � m   � ��u�u �v   �  � � � n  � � � � � I   � ��t�s�r�t 0 do_show_message_pane  �s  �r   �  f   � � �  ��q � O  � � � � � I  � ��p ��o
�p .sysodlogaskr        TEXT � o   � ��n�n 0 install_success  �o   � m   � � ��q  �}   � I  � ��m ��l
�m .sysodlogaskr        TEXT � o   � ��k�k 0 install_success  �l  �~  ��  ��   �  ��j � l  � ��i�h�i  �h  �j   `  �  � l     �g�f�g  �f     l     �e�e   : 4 ----- common to both install & uninstall ----------     i   & ) I      �d�c�b�d 0 do_quit  �c  �b   O    
	 I   	�a�`�_
�a .aevtquitnull��� ��� null�`  �_  	 m      � 

 l     �^�]�^  �]    i   * - I      �\�[�Z�\ 0 	do_launch  �[  �Z   O     
 I   	�Y�X�W
�Y .ascrnoop****      � ****�X  �W   m      �  l     �V�U�V  �U    l     �T�S�T  �S    l     �R�R   6 0 ------------- Installation --------------------     l     �Q�P�Q  �P    i   . 1 I      �O�N�M�O 0 do_defaults  �N  �M   k       !  I    �L"�K
�L .sysoexecTEXT���     TEXT" m     ## < 6defaults write com.apple.mail EnableBundles -bool true   �K  ! $�J$ I   �I%�H
�I .sysoexecTEXT���     TEXT% m    && @ :defaults write com.apple.mail BundleCompatibilityVersion 2   �H  �J   '(' l     �G�F�G  �F  ( )*) i   2 5+,+ I      �E�D�C�E 0 
do_install  �D  �C  , O     5-.- k    4// 010 l   �B2�B  2 4 . first make sure the destination folder exists   1 343 n   565 I    �A7�@�A 0 create_folder_if_needed  7 898 o    
�?�? 0 plugins_folder_name  9 :�>: n  
 ;<; I    �=�<�;�= 0 get_mail_folder  �<  �;  <  f   
 �>  �@  6  f    4 =>= l   �:?�:  ? ( " remove old version if it exists		   > @A@ n   BCB I    �9D�8�9 0 remove_item_from_folder  D EFE m    GG  MailWidescreen.mailbundle   F H�7H n   IJI I    �6�5�4�6 0 get_destination_folder  �5  �4  J  f    �7  �8  C  f    A KLK l     �3M�3  M   then copy!   L N�2N n    4OPO I   ! 4�1Q�0�1 0 install_item_into_folder  Q RSR o   ! &�/�/ 0 plugin_filename  S TUT n  & +VWV I   ' +�.�-�,�. 0 get_source_folder  �-  �,  W  f   & 'U X�+X n  + 0YZY I   , 0�*�)�(�* 0 get_destination_folder  �)  �(  Z  f   + ,�+  �0  P  f     !�2  . m     [[�null     ߀��  �
Finder.app]  `�: �h�������
  4~ �6 ����J���h��  �����X��|�MACS   alis    �  MacBook Pro (OS X)         ��PH+    �
Finder.app                                                       B~���        ����  	                CoreServices    �1�      ��6n      �  �  �  9MacBook Pro (OS X):System:Library:CoreServices:Finder.app    
 F i n d e r . a p p  &  M a c B o o k   P r o   ( O S   X )  &System/Library/CoreServices/Finder.app  / ��  * \]\ l     �'�&�'  �&  ] ^_^ i   6 9`�%` I      �$�#�"�$ %0 !do_create_plugin_folder_if_needed  �#  �"  �%  _ aba l     �!� �!  �   b cdc i   : =efe I      ���� 0 do_show_message_pane  �  �  f O     ghg k    ii jkj r    
lml 4    �n
� 
mvwrn m    �� m o      �� 0 message_viewer  k o�o O   pqp r    rsr m    �
� boovtrues 1    �
� 
mvpvq o    �� 0 message_viewer  �  h m      �d tut l     �v�  v 8 2 ------------- Uninstallation --------------------   u wxw l     ���  �  x yzy i   > A{|{ I      ���� 0 do_uninstall  �  �  | n    }~} I    ��� 0 remove_item_from_folder   ��� o    �� 0 plugin_filename  � ��� n   ��� I    ��
�	� 0 get_destination_folder  �
  �	  �  f    �  �  ~  f     z ��� l     ���  �  � ��� l     ���  �  � ��� l     ���  � ) # ------- utilities ----------------   � ��� i   B E��� I      ���� 0 create_folder_if_needed  � ��� o      �� 0 folder_name  � �� � o      ���� 0 container_folder  �   �  � O     &��� Z    %������ I   �����
�� .coredoexbool        obj � n    
��� 4    
���
�� 
cfol� o    	���� 0 folder_name  � l   ���� c    ��� o    ���� 0 container_folder  � m    ��
�� 
alis��  ��  � l   �����  �   do nothing   ��  � k    %�� ��� l   �����  �   create it!   � ���� I   %�����
�� .corecrel****      � null��  � ����
�� 
kocl� m    ��
�� 
cfol� ����
�� 
insh� l   ���� c    ��� o    ���� 0 container_folder  � m    ��
�� 
alis��  � �����
�� 
prdt� K    !�� �����
�� 
pnam� o    ���� 0 folder_name  ��  ��  ��  � m     [� ��� l     ������  ��  � ��� i   F I��� I      ������� 0 install_item_into_folder  � ��� o      ���� 0 	item_name  � ��� o      ���� 0 source_folder  � ���� o      ���� 0 destination_folder  ��  ��  � O     ��� I   ����
�� .coreclon****      � ****� l   ���� c    ��� l   	���� c    	��� b    ��� o    ���� 0 source_folder  � o    ���� 0 	item_name  � m    ��
�� 
ctxt��  � m   	 
��
�� 
alis��  � ����
�� 
insh� l   ���� c    ��� o    ���� 0 destination_folder  � m    ��
�� 
alis��  � �����
�� 
alrp� m    ��
�� boovtrue��  � m     [� ��� l     ������  ��  � ��� i   J M��� I      ������� 0 remove_item_from_folder  � ��� o      ���� 0 	item_name  � ���� o      ���� 0 target_folder  ��  ��  � O     $��� Z    #������ I   �����
�� .coredoexbool        obj � n    
��� 4    
���
�� 
cobj� o    	���� 0 	item_name  � l   ���� c    ��� o    ���� 0 target_folder  � m    ��
�� 
alis��  ��  � k    �� ��� l   �����  �   remove it!   � ���� I   ����
�� .coremoveobj        obj � n    ��� 4    ���
�� 
cobj� o    ���� 0 	item_name  � l   ���� c    ��� o    ���� 0 target_folder  � m    ��
�� 
alis��  � �����
�� 
insh� l   ���� 1    ��
�� 
trsh��  ��  ��  ��  � l  " "�����  �   do nothing   � m     [� ��� l     ������  ��  � ��� l     ������  ��  � ��� i   N Q��� I      ������� 0 is_app_running  � ���� o      ���� 0 appname  ��  ��  � O     � � k      r     l   	�� n    	 1    	��
�� 
pnam 2    ��
�� 
pcap��   o      ���� 0 running_processes   	��	 Z    
��
 E     o    ���� 0 running_processes   o    ���� 0 appname   L     m    ��
�� boovtrue��   L     m    ��
�� boovfals��    m     �null     ߀��  �System Events.app�h�������  \~ �6 ����J���h��  �����X��|�sevs   alis    �  MacBook Pro (OS X)         ��PH+    �System Events.app                                                h���        ����  	                CoreServices    �1�      ��e      �  �  �  @MacBook Pro (OS X):System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p  &  M a c B o o k   P r o   ( O S   X )  -System/Library/CoreServices/System Events.app   / ��  �  l     ������  ��    i   R U I      �������� 0 get_source_folder  ��  ��   L      l    �� m      Z TMacBook Pro (OS X):Users:aaron:Documents:projects:letterbox:Letterbox:build:Release:   ��    l     ������  ��    i   V Y  I      �������� 0 get_mail_folder  ��  ��    L     !! l    "��" c     #$# b     %&% l    '��' I    ��()
�� .earsffdralis        afdr( l    *��* m     ��
�� afdrcusr��  ) ��+��
�� 
rtyp+ m    ��
�� 
ctxt��  ��  & o    ���� 0 mail_folder_subpath  $ m    ��
�� 
ctxt��   ,-, l     ������  ��  - ./. i   Z ]010 I      �������� 0 get_destination_folder  ��  ��  1 L     22 l    3��3 c     454 b     676 n    898 I    �������� 0 get_mail_folder  ��  ��  9  f     7 o    
���� 0 plugins_folder_name  5 m    ��
�� 
ctxt��  / :;: l     ������  ��  ; <=< i   ^ a>?> I      ����~�� 0 get_plugin_to_install  �  �~  ? L     @@ l    A�}A c     BCB b     DED n    FGF I    �|�{�z�| 0 get_source_folder  �{  �z  G  f     E o    
�y�y 0 plugin_filename  C m    �x
�x 
ctxt�}  = HIH l     �w�v�w  �v  I JKJ i   b eLML I      �u�t�s�u 0 get_installed_plugin  �t  �s  M L     NN l    O�rO c     PQP b     RSR n    TUT I    �q�p�o�q 0 get_destination_folder  �p  �o  U  f     S o    
�n�n 0 plugin_filename  Q m    �m
�m 
ctxt�r  K VWV l     �l�k�l  �k  W X�jX l     �i�h�i  �h  �j       6�gY   ! 'Z 3[ B\]^_`abcdefghijklm�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�g  Y 4�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ��������L 0 mail_folder_subpath  �K 0 plugins_folder_name  �J 0 plugin_filename  �I 0 announce_intro  �H 0 announce_quit_mail_warning  �G 0 announce_prompt  �F 0 install_success  �E 0 uninstall_success  �D 0 do_announce  �C 0 do_quit  �B 0 	do_launch  �A 0 do_defaults  �@ 0 
do_install  �? %0 !do_create_plugin_folder_if_needed  �> 0 do_show_message_pane  �= 0 do_uninstall  �< 0 create_folder_if_needed  �; 0 install_item_into_folder  �: 0 remove_item_from_folder  �9 0 is_app_running  �8 0 get_source_folder  �7 0 get_mail_folder  �6 0 get_destination_folder  �5 0 get_plugin_to_install  �4 0 get_installed_plugin  
�3 .aevtoappnull  �   � ****�2 	0 debug  �1  �0  �/  �.  �-  �,  �+  �*  �)  �(  �'  �&  �%  �$  �#  �"  �!  �   �  �  �  �  �  �  �  Z 4 . ** I will have to quit Mail to install. **    [ � �Letterbox is activated. To remove (if you must!), run the installer again and choose 'Uninstall', or simply remove the plugin from ~/Library/Mail/Bundles   \ � b��no�� 0 do_announce  �  �  n ����� 0 announce_text  � 0 mail_is_already_running  � 0 install_choice_record  � 0 install_choice  o  s�� � � �� �����
�	� ��� � ����� 0 is_app_running  
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT
� 
bhit�
 0 do_quit  �	 
� .sysodelanull��� ��� nmbr� 0 do_uninstall  � 0 	do_launch  � 0 do_defaults  � 0 
do_install  � 0 do_show_message_pane  � �b  E�O)�k+ E�O� �b  %E�Y hO�b  %E�O�����mv��� 	E�O��,E�O� *j+ O�j Y hO��  1)j+ O� )j+ Oa  b  j 	UY b  j 	Y L�a   C)j+ O)j+ O� ')j+ O�j O)j+ Oa  b  j 	UY b  j 	Y hOP] ��� pq��� 0 do_quit  �  �   p  q  ���
�� .aevtquitnull��� ��� null�� � *j U^ ������rs���� 0 	do_launch  ��  ��  r  s  ���
�� .ascrnoop****      � ****�� � *j U_ ������tu���� 0 do_defaults  ��  ��  t  u #��&
�� .sysoexecTEXT���     TEXT�� �j O�j ` ��,����vw���� 0 
do_install  ��  ��  v  w [����G���������� 0 get_mail_folder  �� 0 create_folder_if_needed  �� 0 get_destination_folder  �� 0 remove_item_from_folder  �� 0 get_source_folder  �� 0 install_item_into_folder  �� 6� 2)b  )j+ l+ O)�)j+ l+ O)b  )j+ )j+ m+ Ua ��������xy���� %0 !do_create_plugin_folder_if_needed  ��  ��  ��  x  y  �� hb ��f����z{���� 0 do_show_message_pane  ��  ��  z ���� 0 message_viewer  {  �����
�� 
mvwr
�� 
mvpv�� � *�k/E�O� e*�,FUUc ��|����|}���� 0 do_uninstall  ��  ��  |  } ������ 0 get_destination_folder  �� 0 remove_item_from_folder  �� )b  )j+  l+ d �������~���� 0 create_folder_if_needed  �� ����� �  ������ 0 folder_name  �� 0 container_folder  ��  ~ ������ 0 folder_name  �� 0 container_folder   
[������������������
�� 
alis
�� 
cfol
�� .coredoexbool        obj 
�� 
kocl
�� 
insh
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null�� '� #��&�/j  hY *����&��l� 	Ue ������������� 0 install_item_into_folder  �� ����� �  �������� 0 	item_name  �� 0 source_folder  �� 0 destination_folder  ��  � �������� 0 	item_name  �� 0 source_folder  �� 0 destination_folder  � [������������
�� 
ctxt
�� 
alis
�� 
insh
�� 
alrp�� 
�� .coreclon****      � ****�� � ��%�&�&��&�e� Uf ������������� 0 remove_item_from_folder  �� ����� �  ������ 0 	item_name  �� 0 target_folder  ��  � ������ 0 	item_name  �� 0 target_folder  � [������������
�� 
alis
�� 
cobj
�� .coredoexbool        obj 
�� 
insh
�� 
trsh
�� .coremoveobj        obj �� %� !��&�/j  ��&�/�*�,l Y hUg ������������� 0 is_app_running  �� ����� �  ���� 0 appname  ��  � ������ 0 appname  �� 0 running_processes  � ����
�� 
pcap
�� 
pnam�� � *�-�,E�O�� eY fUh ������������ 0 get_source_folder  ��  ��  �  � �� �i �� ���������� 0 get_mail_folder  ��  ��  �  � ��������
�� afdrcusr
�� 
rtyp
�� 
ctxt
�� .earsffdralis        afdr�� ���l b   %�&j ��1���������� 0 get_destination_folder  ��  ��  �  � ������ 0 get_mail_folder  
�� 
ctxt�� )j+  b  %�&k ��?���������� 0 get_plugin_to_install  ��  ��  �  � ������ 0 get_source_folder  
�� 
ctxt�� )j+  b  %�&l ��M���������� 0 get_installed_plugin  ��  ��  �  � ��~� 0 get_destination_folder  
�~ 
ctxt�� )j+  b  %�&m �}��|�{���z
�} .aevtoappnull  �   � ****� k     ��  J��  Q��  V�y�y  �|  �{  �  � �x�w�x 	0 debug  �w 0 do_announce  �z eE�O*j+ O�
�f boovtrue�e  �d  �c  �b  �a  �`  �_  �^  �]  �\  �[  �Z  �Y  �X  �W  �V  �U  �T  �S  �R  �Q  �P  �O  �N  �M   ascr  ��ޭ