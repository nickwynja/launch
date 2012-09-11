FasdUAS 1.101.10   ��   ��    k             l     ��  ��    � � This script gets a list of the in progress Skype calls and, if there's more than one, provides a selection list. It then puts the specified call on hold. Written by Dennis Rande, 2/28/08.     � 	 	x   T h i s   s c r i p t   g e t s   a   l i s t   o f   t h e   i n   p r o g r e s s   S k y p e   c a l l s   a n d ,   i f   t h e r e ' s   m o r e   t h a n   o n e ,   p r o v i d e s   a   s e l e c t i o n   l i s t .   I t   t h e n   p u t s   t h e   s p e c i f i e d   c a l l   o n   h o l d .   W r i t t e n   b y   D e n n i s   R a n d e ,   2 / 2 8 / 0 8 .   
  
 l     ��������  ��  ��        j     �� �� 0 
scriptname 
ScriptName  m        �    H o l d   S k y p e   C a l l      l     ��������  ��  ��        l   � ����  O    �    k   �       l   ��������  ��  ��        l   ��  ��    � � Get a comma-delimited list of all active calls from Skype. If there are no active calls, the string "CALLS " is returned, so just exit.     �     G e t   a   c o m m a - d e l i m i t e d   l i s t   o f   a l l   a c t i v e   c a l l s   f r o m   S k y p e .   I f   t h e r e   a r e   n o   a c t i v e   c a l l s ,   t h e   s t r i n g   " C A L L S   "   i s   r e t u r n e d ,   s o   j u s t   e x i t .     !   l   ��������  ��  ��   !  " # " r     $ % $ I   ���� &
�� .sendskypnull��� ��� null��   & �� ' (
�� 
cmnd ' m     ) ) � * * $ S E A R C H   A C T I V E C A L L S ( �� +��
�� 
scrp + o    ���� 0 
scriptname 
ScriptName��   % o      ���� 0 activecalls activeCalls #  , - , l   ��������  ��  ��   -  . / . Z    7 0 1���� 0 =    2 3 2 n     4 5 4 4   �� 6
�� 
cwor 6 m    ����  5 o    ���� 0 activecalls activeCalls 3 m     7 7 � 8 8 
 E R R O R 1 k    3 9 9  : ; : I   *�� < =
�� .sysodlogaskr        TEXT < o    ���� 0 activecalls activeCalls = �� > ?
�� 
btns > J    " @ @  A�� A m      B B � C C  O K��   ? �� D E
�� 
dflt D m   # $����  E �� F��
�� 
disp F m   % &���� ��   ;  G H G n  + 0 I J I I   , 0�������� 0 hidelaunchbar HideLaunchBar��  ��   J  f   + , H  K�� K L   1 3����  ��  ��  ��   /  L M L l  8 8��������  ��  ��   M  N O N Z   8 L P Q���� P =  8 = R S R o   8 9���� 0 activecalls activeCalls S m   9 < T T � U U  C A L L S   Q k   @ H V V  W X W n  @ E Y Z Y I   A E�������� 0 hidelaunchbar HideLaunchBar��  ��   Z  f   @ A X  [�� [ L   F H����  ��  ��  ��   O  \ ] \ l  M M��������  ��  ��   ]  ^ _ ^ l  M M�� ` a��   ` � � Strip off the "CALLS " substring (6 characters) from the beginning and then save the remaining comma-delimited list as an AppleScript list object.    a � b b&   S t r i p   o f f   t h e   " C A L L S   "   s u b s t r i n g   ( 6   c h a r a c t e r s )   f r o m   t h e   b e g i n n i n g   a n d   t h e n   s a v e   t h e   r e m a i n i n g   c o m m a - d e l i m i t e d   l i s t   a s   a n   A p p l e S c r i p t   l i s t   o b j e c t . _  c d c l  M M��������  ��  ��   d  e f e r   M b g h g c   M ` i j i n   M \ k l k 7  N \�� m n
�� 
cha  m m   T X����  n m   Y [������ l o   M N���� 0 activecalls activeCalls j m   \ _��
�� 
TEXT h o      ���� 0 activecalls activeCalls f  o p o r   c j q r q n   c f s t s 2  d f��
�� 
cwor t o   c d���� 0 activecalls activeCalls r o      ���� "0 activecallslist activeCallsList p  u v u l  k k��������  ��  ��   v  w x w l  k k�� y z��   y�� Loop through the list object and get all the calls in progress, retrieving their PARTNER_DISPNAME property from Skype. Exit if an error is encountered. Note the PSTN_NUMBER property also seems to get the call's phone number, but I dont know what it'll do with a Skype to Skype call. It seems like a better approach to use the PARTNER_DISPNAME property, which, I believe, provides the Skype username from a Skype to Skype call and the dialed phone number from a Skype to phone call.    z � { {�   L o o p   t h r o u g h   t h e   l i s t   o b j e c t   a n d   g e t   a l l   t h e   c a l l s   i n   p r o g r e s s ,   r e t r i e v i n g   t h e i r   P A R T N E R _ D I S P N A M E   p r o p e r t y   f r o m   S k y p e .   E x i t   i f   a n   e r r o r   i s   e n c o u n t e r e d .   N o t e   t h e   P S T N _ N U M B E R   p r o p e r t y   a l s o   s e e m s   t o   g e t   t h e   c a l l ' s   p h o n e   n u m b e r ,   b u t   I   d o n t   k n o w   w h a t   i t ' l l   d o   w i t h   a   S k y p e   t o   S k y p e   c a l l .   I t   s e e m s   l i k e   a   b e t t e r   a p p r o a c h   t o   u s e   t h e   P A R T N E R _ D I S P N A M E   p r o p e r t y ,   w h i c h ,   I   b e l i e v e ,   p r o v i d e s   t h e   S k y p e   u s e r n a m e   f r o m   a   S k y p e   t o   S k y p e   c a l l   a n d   t h e   d i a l e d   p h o n e   n u m b e r   f r o m   a   S k y p e   t o   p h o n e   c a l l . x  | } | l  k k��������  ��  ��   }  ~  ~ r   k q � � � J   k m����   � o      ���� "0 displaycalllist displayCallList   � � � l  r r��������  ��  ��   �  � � � Y   r� ��� � ��� � k   �� � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 i   � o   � ����� "0 activecallslist activeCallsList � o      ���� 0 callid callID �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 2 , Check if call is in progress (not on hold).    � � � � X   C h e c k   i f   c a l l   i s   i n   p r o g r e s s   ( n o t   o n   h o l d ) . �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � I  � ����� �
�� .sendskypnull��� ��� null��   � �� � �
�� 
cmnd � b   � � � � � b   � � � � � m   � � � � � � �  G E T   C A L L   � o   � ����� 0 callid callID � m   � � � � � � �    S T A T U S � �� ���
�� 
scrp � o   � ����� 0 
scriptname 
ScriptName��   � o      ���� 0 statusresult statusResult �  � � � l  � ���������  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ����� � =  � � � � � n   � � � � � 4  � ��� �
�� 
cwor � m   � �����  � o   � ����� 0 statusresult statusResult � m   � � � � � � � 
 E R R O R � k   � � � �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � o   � ����� 0 statusresult statusResult � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��   � �� � �
�� 
dflt � m   � �����  � �� ��
�� 
disp � m   � ��~�~ �   �  � � � n  � � � � � I   � ��}�|�{�} 0 hidelaunchbar HideLaunchBar�|  �{   �  f   � � �  ��z � L   � ��y�y  �z  ��  ��   �  � � � l  � ��x�w�v�x  �w  �v   �  � � � Z   � � � ��u�t � =  � � � � � n   � � � � � 4  � ��s �
�s 
cwor � m   � ��r�r�� � o   � ��q�q 0 statusresult statusResult � m   � � � � � � �  O N H O L D � L   � � � � m   � ��p
�p boovtrue�u  �t   �  � � � l  � ��o�n�m�o  �n  �m   �  � � � Z   �� � ��l�k � =  � � � � � n   � � � � � 4  � ��j �
�j 
cwor � m   � ��i�i�� � o   � ��h�h 0 statusresult statusResult � m   � � � � � � �  I N P R O G R E S S � k   �| � �  � � � l  � ��g�f�e�g  �f  �e   �  � � � r   � � � � I  ��d�c �
�d .sendskypnull��� ��� null�c   � �b � �
�b 
cmnd � b   �
 � � � b   � � � � m   � � � � � �  G E T   C A L L   � o  �a�a 0 callid callID � m  	 � � � � � "   P A R T N E R _ D I S P N A M E � �` ��_
�` 
scrp � o  �^�^ 0 
scriptname 
ScriptName�_   � o      �]�] 0 	pdnresult 	pdnResult �  � � � Z  D � ��\�[ � = #   n   4 �Z
�Z 
cwor m  �Y�Y  o  �X�X 0 	pdnresult 	pdnResult m  " � 
 E R R O R � k  &@ 	 I &7�W

�W .sysodlogaskr        TEXT
 o  &)�V�V 0 	pdnresult 	pdnResult �U
�U 
btns J  */ �T m  *- �  O K�T   �S
�S 
dflt m  01�R�R  �Q�P
�Q 
disp m  23�O�O �P  	  n 8= I  9=�N�M�L�N 0 hidelaunchbar HideLaunchBar�M  �L    f  89 �K L  >@�J�J  �K  �\  �[   �  l EE�I�H�G�I  �H  �G    l EE�F�F   � � The output of the above command looks like this: "CALL 1234 PARTNER_DISPNAME Dennis Rande" or "CALL 1234 PARTNER_DISPNAME +11234567890". Parse the output to extract everything after the "PARTNER_DISPNAME" substring.    �  �   T h e   o u t p u t   o f   t h e   a b o v e   c o m m a n d   l o o k s   l i k e   t h i s :   " C A L L   1 2 3 4   P A R T N E R _ D I S P N A M E   D e n n i s   R a n d e "   o r   " C A L L   1 2 3 4   P A R T N E R _ D I S P N A M E   + 1 1 2 3 4 5 6 7 8 9 0 " .   P a r s e   t h e   o u t p u t   t o   e x t r a c t   e v e r y t h i n g   a f t e r   t h e   " P A R T N E R _ D I S P N A M E "   s u b s t r i n g . !"! l EE�E�D�C�E  �D  �C  " #$# r  EP%&% m  EH'' �((   P A R T N E R _ D I S P N A M E& n     )*) 1  KO�B
�B 
txdl* 1  HK�A
�A 
ascr$ +,+ r  Q]-.- n  QY/0/ 4 TY�@1
�@ 
citm1 m  WX�?�?��0 o  QT�>�> 0 	pdnresult 	pdnResult. o      �=�= 0 pdn  , 232 r  ^i454 m  ^a66 �77  5 n     898 1  dh�<
�< 
txdl9 1  ad�;
�; 
ascr3 :;: l jj�:�9�8�:  �9  �8  ; <=< l jj�7>?�7  > > 8 Add a formatted entry onto the end of the display list.   ? �@@ p   A d d   a   f o r m a t t e d   e n t r y   o n t o   t h e   e n d   o f   t h e   d i s p l a y   l i s t .= ABA l jj�6�5�4�6  �5  �4  B CDC r  jzEFE l juG�3�2G b  juHIH b  jqJKJ o  jm�1�1 0 callid callIDK m  mpLL �MM   I o  qt�0�0 0 pdn  �3  �2  F l     N�/�.N n      OPO  ;  xyP o  ux�-�- "0 displaycalllist displayCallList�/  �.  D Q�,Q l {{�+�*�)�+  �*  �)  �,  �l  �k   � R�(R l ���'�&�%�'  �&  �%  �(  �� 0 i   � m   u v�$�$  � n   v �STS m   } ��#
�# 
nmbrT n  v }UVU 2  y }�"
�" 
cobjV o   v y�!�! "0 activecallslist activeCallsList��   � W� W l ������  �  �  �     m     XX�                                                                                  SKYP  alis    L  Macinstosh HD              �6�fH+   "<	Skype.app                                                       |�	L�        ����  	                Applications    �7�      �	�     "<  %Macinstosh HD:Applications: Skype.app    	 S k y p e . a p p    M a c i n s t o s h   H D  Applications/Skype.app  / ��  ��  ��    YZY l     ����  �  �  Z [\[ l     �]^�  ] � �  If there is more than one active call, display a selection list. Note that AppleScript's "choose from list" construct returns either a single element list object or false if the "Cancel" button is clicked.   ^ �__�     I f   t h e r e   i s   m o r e   t h a n   o n e   a c t i v e   c a l l ,   d i s p l a y   a   s e l e c t i o n   l i s t .   N o t e   t h a t   A p p l e S c r i p t ' s   " c h o o s e   f r o m   l i s t "   c o n s t r u c t   r e t u r n s   e i t h e r   a   s i n g l e   e l e m e n t   l i s t   o b j e c t   o r   f a l s e   i f   t h e   " C a n c e l "   b u t t o n   i s   c l i c k e d .\ `a` l     ����  �  �  a bcb l ��d��d Z  ��efghe = ��iji l ��k��k I ���l�
� .corecnte****       ****l o  ���� "0 displaycalllist displayCallList�  �  �  j m  ����  f k  ��mm non n ��pqp I  ������ 0 hidelaunchbar HideLaunchBar�  �  q  f  ��o r�
r L  ���	�	  �
  g sts ? ��uvu l ��w��w I ���x�
� .corecnte****       ****x o  ���� "0 displaycalllist displayCallList�  �  �  v m  ���� t y�y k  ��zz {|{ l ���� ���  �   ��  | }~} r  ��� I ������
�� .gtqpchltns    @   @ ns  � o  ������ "0 displaycalllist displayCallList� ����
�� 
prmp� m  ���� ��� ( S e l e c t   c a l l   t o   h o l d :� ����
�� 
appr� m  ���� ���  H o l d   S k y p e   C a l l� ����
�� 
empL� m  ����
�� boovfals� �����
�� 
mlsl��  � o      ���� 0 selectedcall selectedCall~ ��� l ����������  ��  ��  � ���� Z  ��������� = ����� o  ������ 0 selectedcall selectedCall� m  ����
�� boovfals� k  ���� ��� n ����� I  ���������� 0 hidelaunchbar HideLaunchBar��  ��  �  f  ��� ���� L  ������  ��  ��  ��  ��  �  h r  ����� n  ����� 4 �����
�� 
cobj� m  ������ � o  ������ "0 displaycalllist displayCallList� o      ���� 0 selectedcall selectedCall�  �  c ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l �I������ O  �I��� k  �H�� ��� l ����������  ��  ��  � ��� l ��������  � P J Put the specified call on hold. Display an error if something goes wrong.   � ��� �   P u t   t h e   s p e c i f i e d   c a l l   o n   h o l d .   D i s p l a y   a n   e r r o r   i f   s o m e t h i n g   g o e s   w r o n g .� ��� l ����������  ��  ��  � ��� r  ���� I ������
�� .sendskypnull��� ��� null��  � ����
�� 
cmnd� b  ���� b  ���� m  ���� ���  S E T   C A L L  � n  ���� 4 ���
�� 
cwor� m  ���� � l ������� c  ���� o  � ���� 0 selectedcall selectedCall� m   ��
�� 
ctxt��  ��  � m  �� ���    S T A T U S   O N H O L D� �����
�� 
scrp� o  ���� 0 
scriptname 
ScriptName��  � o      ���� 0 statusresult statusResult� ��� L  �� m  ��
�� boovtrue� ��� l ��������  ��  ��  � ��� Z @������� = (��� n  $��� 4 !$���
�� 
cwor� m  "#���� � o  !���� 0 statusresult statusResult� m  $'�� ��� 
 E R R O R� I +<����
�� .sysodlogaskr        TEXT� o  +.���� 0 statusresult statusResult� ����
�� 
btns� J  /4�� ���� m  /2�� ���  O K��  � ����
�� 
dflt� m  56���� � �����
�� 
disp� m  78���� ��  ��  ��  � ��� n AF��� I  BF�������� 0 hidelaunchbar HideLaunchBar��  ��  �  f  AB� ���� l GG��������  ��  ��  ��  � m  �����                                                                                  SKYP  alis    L  Macinstosh HD              �6�fH+   "<	Skype.app                                                       |�	L�        ����  	                Applications    �7�      �	�     "<  %Macinstosh HD:Applications: Skype.app    	 S k y p e . a p p    M a c i n s t o s h   H D  Applications/Skype.app  / ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      �������� 0 hidelaunchbar HideLaunchBar��  ��  � k     �� ��� r     	��� l    ������ I    ����
�� .earsffdralis        afdr� m     ��
�� appfegfp� �����
�� 
rtyp� m    ��
�� 
utxt��  ��  ��  � o      ���� 0 appname appName� ���� Z  
 ������� D   
 ��� o   
 ���� 0 appname appName� m    �� ���  L a u n c h B a r . a p p :� I   �����
�� .GURLGURLnull��� ��� TEXT� m       �   x - l a u n c h b a r : h i d e��  ��  ��  ��  � �� l     ��������  ��  ��  ��       �� 	
����   �������������������������� 0 
scriptname 
ScriptName�� 0 hidelaunchbar HideLaunchBar
�� .aevtoappnull  �   � ****�� 0 activecalls activeCalls�� "0 activecallslist activeCallsList�� "0 displaycalllist displayCallList�� 0 callid callID�� 0 statusresult statusResult�� 0 	pdnresult 	pdnResult�� 0 pdn  �� 0 selectedcall selectedCall��   ����������� 0 hidelaunchbar HideLaunchBar��  ��   ���� 0 appname appName ��������� ��
�� appfegfp
�� 
rtyp
�� 
utxt
�� .earsffdralis        afdr
�� .GURLGURLnull��� ��� TEXT�� ���l E�O�� 
�j Y h ��~�}�|
� .aevtoappnull  �   � **** k    I   b ��{�{  �~  �}   �z�z 0 i   ;X�y )�x�w�v�u�t 7�s B�r�q�p�o�n T�m�l�k�j�i�h�g�f � ��e � � � � � ��d'�c�b�a�`6L�_�^��]��\�[�Z�Y�X��W���
�y 
cmnd
�x 
scrp�w 
�v .sendskypnull��� ��� null�u 0 activecalls activeCalls
�t 
cwor
�s 
btns
�r 
dflt
�q 
disp�p 
�o .sysodlogaskr        TEXT�n 0 hidelaunchbar HideLaunchBar
�m 
cha �l 
�k 
TEXT�j "0 activecallslist activeCallsList�i "0 displaycalllist displayCallList
�h 
cobj
�g 
nmbr�f 0 callid callID�e 0 statusresult statusResult�d 0 	pdnresult 	pdnResult
�c 
ascr
�b 
txdl
�a 
citm�` 0 pdn  
�_ .corecnte****       ****
�^ 
prmp
�] 
appr
�\ 
empL
�[ 
mlsl�Z 
�Y .gtqpchltns    @   @ ns  �X 0 selectedcall selectedCall
�W 
ctxt�|J��*���b   � E�O��k/�  ���kv�k�k� O)j+ OhY hO�a   )j+ OhY hO�[a \[Za \Zi2a &E�O��-E` OjvE` Ok_ a -a ,Ekh  _ a �/E` O*�a _ %a %�b   � E` O_ �k/a   _ �a kv�k�k� O)j+ OhY hO_ �i/a   eY hO_ �i/a   �*�a  _ %a !%�b   � E` "O_ "�k/a #  _ "�a $kv�k�k� O)j+ OhY hOa %_ &a ',FO_ "a (i/E` )Oa *_ &a ',FO_ a +%_ )%_ 6FOPY hOP[OY��OPUO_ j ,j  )j+ OhY S_ j ,k ;_ a -a .a /a 0a 1fa 2fa 3 4E` 5O_ 5f  )j+ OhY hY _ a k/E` 5O� R*�a 6_ 5a 7&�k/%a 8%�b   � E` OeO_ �k/a 9  _ �a :kv�k�k� Y hO)j+ OPU �  1 0 3 9 �V�V   	�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G	 �  1 0 3 9�U  �T  �S  �R  �Q  �P  �O  �N  �M  �L  �K  �J  �I  �H  �G   �F�F   �E�D�C�B�A�@�?�>�=�<�;�:�9�8�7 � " 1 0 3 9     n i c k w - b r a i n�E  �D  �C  �B  �A  �@  �?  �>  �=  �<  �;  �:  �9  �8  �7  
 � 6 C A L L   1 0 3 9   S T A T U S   I N P R O G R E S S � L C A L L   1 0 3 9   P A R T N E R _ D I S P N A M E   n i c k w - b r a i n �    n i c k w - b r a i n��   ascr  ��ޭ