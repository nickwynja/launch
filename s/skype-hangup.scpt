FasdUAS 1.101.10   ��   ��    k             l     ��  ��    � � This script gets a list of the active Skype calls and, if there's more than one, provides a selection list. It then hangs up the specified call. Written by Dennis Rande, 2/28/08.     � 	 	f   T h i s   s c r i p t   g e t s   a   l i s t   o f   t h e   a c t i v e   S k y p e   c a l l s   a n d ,   i f   t h e r e ' s   m o r e   t h a n   o n e ,   p r o v i d e s   a   s e l e c t i o n   l i s t .   I t   t h e n   h a n g s   u p   t h e   s p e c i f i e d   c a l l .   W r i t t e n   b y   D e n n i s   R a n d e ,   2 / 2 8 / 0 8 .   
  
 l     ��������  ��  ��        j     �� �� 0 
scriptname 
ScriptName  m        �   $ H a n g   U p   S k y p e   C a l l      l     ��������  ��  ��        l    ����  O        k          l   ��������  ��  ��        l   ��  ��    � � Get a comma-delimited list of all active calls from Skype. If there are no active calls, the string "CALLS " is returned, so just exit.     �     G e t   a   c o m m a - d e l i m i t e d   l i s t   o f   a l l   a c t i v e   c a l l s   f r o m   S k y p e .   I f   t h e r e   a r e   n o   a c t i v e   c a l l s ,   t h e   s t r i n g   " C A L L S   "   i s   r e t u r n e d ,   s o   j u s t   e x i t .     !   l   ��������  ��  ��   !  " # " r     $ % $ I   ���� &
�� .sendskypnull��� ��� null��   & �� ' (
�� 
cmnd ' m     ) ) � * * $ S E A R C H   A C T I V E C A L L S ( �� +��
�� 
scrp + o    ���� 0 
scriptname 
ScriptName��   % o      ���� 0 activecalls activeCalls #  , - , l   ��������  ��  ��   -  . / . l    �� 0 1��   0]W
	-- Neither of these commands seem to return anything. So I'm not sure how to get a list of voicemail IDs.
	
	set voicemails to send command "SEARCH VOICEMAILS" script name ScriptName	set MissedVoicemails to send command "SEARCH MISSEDVOICEMAILS" script name ScriptName		display dialog voicemails	display dialog MissedVoicemails	return
	    1 � 2 2� 
 	 - -   N e i t h e r   o f   t h e s e   c o m m a n d s   s e e m   t o   r e t u r n   a n y t h i n g .   S o   I ' m   n o t   s u r e   h o w   t o   g e t   a   l i s t   o f   v o i c e m a i l   I D s . 
 	 
 	 s e t   v o i c e m a i l s   t o   s e n d   c o m m a n d   " S E A R C H   V O I C E M A I L S "   s c r i p t   n a m e   S c r i p t N a m e  	 s e t   M i s s e d V o i c e m a i l s   t o   s e n d   c o m m a n d   " S E A R C H   M I S S E D V O I C E M A I L S "   s c r i p t   n a m e   S c r i p t N a m e  	  	 d i s p l a y   d i a l o g   v o i c e m a i l s  	 d i s p l a y   d i a l o g   M i s s e d V o i c e m a i l s  	 r e t u r n 
 	 /  3 4 3 l   ��������  ��  ��   4  5 6 5 Z    7 7 8���� 7 =    9 : 9 n     ; < ; 4   �� =
�� 
cwor = m    ����  < o    ���� 0 activecalls activeCalls : m     > > � ? ? 
 E R R O R 8 k    3 @ @  A B A I   *�� C D
�� .sysodlogaskr        TEXT C o    ���� 0 activecalls activeCalls D �� E F
�� 
btns E J    " G G  H�� H m      I I � J J  O K��   F �� K L
�� 
dflt K m   # $����  L �� M��
�� 
disp M m   % &���� ��   B  N O N n  + 0 P Q P I   , 0�������� 0 hidelaunchbar HideLaunchBar��  ��   Q  f   + , O  R�� R L   1 3����  ��  ��  ��   6  S T S l  8 8��������  ��  ��   T  U V U Z   8 L W X���� W =  8 = Y Z Y o   8 9���� 0 activecalls activeCalls Z m   9 < [ [ � \ \  C A L L S   X k   @ H ] ]  ^ _ ^ n  @ E ` a ` I   A E�������� 0 hidelaunchbar HideLaunchBar��  ��   a  f   @ A _  b�� b L   F H����  ��  ��  ��   V  c d c l  M M��������  ��  ��   d  e f e l  M M�� g h��   g � � Strip off the "CALLS " substring (6 characters) from the beginning and then save the remaining comma-delimited list as an AppleScript list object.    h � i i&   S t r i p   o f f   t h e   " C A L L S   "   s u b s t r i n g   ( 6   c h a r a c t e r s )   f r o m   t h e   b e g i n n i n g   a n d   t h e n   s a v e   t h e   r e m a i n i n g   c o m m a - d e l i m i t e d   l i s t   a s   a n   A p p l e S c r i p t   l i s t   o b j e c t . f  j k j l  M M��������  ��  ��   k  l m l r   M b n o n c   M ` p q p n   M \ r s r 7  N \�� t u
�� 
cha  t m   T X����  u m   Y [������ s o   M N���� 0 activecalls activeCalls q m   \ _��
�� 
TEXT o o      ���� 0 activecalls activeCalls m  v w v r   c j x y x n   c f z { z 2  d f��
�� 
cwor { o   c d���� 0 activecalls activeCalls y o      ���� "0 activecallslist activeCallsList w  | } | l  k k��������  ��  ��   }  ~  ~ l  k k�� � ���   ��� Loop through the list object and get each active call's PARTNER_DISPNAME property from Skype. Exit if an error is encountered. Note the PSTN_NUMBER property also seems to get the call's phone number, but I dont know what it'll do with a Skype to Skype call. It seems like a better approach to use the PARTNER_DISPNAME property, which, I believe, provides the Skype username from a Skype to Skype call and the dialed phone number from a Skype to phone call.    � � � ��   L o o p   t h r o u g h   t h e   l i s t   o b j e c t   a n d   g e t   e a c h   a c t i v e   c a l l ' s   P A R T N E R _ D I S P N A M E   p r o p e r t y   f r o m   S k y p e .   E x i t   i f   a n   e r r o r   i s   e n c o u n t e r e d .   N o t e   t h e   P S T N _ N U M B E R   p r o p e r t y   a l s o   s e e m s   t o   g e t   t h e   c a l l ' s   p h o n e   n u m b e r ,   b u t   I   d o n t   k n o w   w h a t   i t ' l l   d o   w i t h   a   S k y p e   t o   S k y p e   c a l l .   I t   s e e m s   l i k e   a   b e t t e r   a p p r o a c h   t o   u s e   t h e   P A R T N E R _ D I S P N A M E   p r o p e r t y ,   w h i c h ,   I   b e l i e v e ,   p r o v i d e s   t h e   S k y p e   u s e r n a m e   f r o m   a   S k y p e   t o   S k y p e   c a l l   a n d   t h e   d i a l e d   p h o n e   n u m b e r   f r o m   a   S k y p e   t o   p h o n e   c a l l .   � � � l  k k��������  ��  ��   �  � � � r   k q � � � J   k m����   � o      ���� "0 displaycalllist displayCallList �  � � � l  r r��������  ��  ��   �  � � � Y   r ��� � ��� � k   � � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 i   � o   � ����� "0 activecallslist activeCallsList � o      ���� 0 callid callID �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � I  � ����� �
�� .sendskypnull��� ��� null��   � �� � �
�� 
cmnd � b   � � � � � b   � � � � � m   � � � � � � �  G E T   C A L L   � o   � ����� 0 callid callID � m   � � � � � � � "   P A R T N E R _ D I S P N A M E � �� ���
�� 
scrp � o   � ����� 0 
scriptname 
ScriptName��   � o      ���� 0 	pdnresult 	pdnResult �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ����� � =  � � � � � n   � � � � � 4  � ��� �
�� 
cwor � m   � �����  � o   � ����� 0 	pdnresult 	pdnResult � m   � � � � � � � 
 E R R O R � k   � � � �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � o   � ����� 0 	pdnresult 	pdnResult � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��   � �� � �
�� 
dflt � m   � �����  � �� ���
�� 
disp � m   � ����� ��   �  � � � n  � � � � � I   � �����~�� 0 hidelaunchbar HideLaunchBar�  �~   �  f   � � �  ��} � L   � ��|�|  �}  ��  ��   �  � � � l  � ��{�z�y�{  �z  �y   �  � � � l  � ��x � ��x   � � � The output of the above command looks like this: "CALL 1234 PARTNER_DISPNAME Dennis Rande" or "CALL 1234 PARTNER_DISPNAME +11234567890". Parse the output to extract everything after the "PARTNER_DISPNAME" substring.    � � � ��   T h e   o u t p u t   o f   t h e   a b o v e   c o m m a n d   l o o k s   l i k e   t h i s :   " C A L L   1 2 3 4   P A R T N E R _ D I S P N A M E   D e n n i s   R a n d e "   o r   " C A L L   1 2 3 4   P A R T N E R _ D I S P N A M E   + 1 1 2 3 4 5 6 7 8 9 0 " .   P a r s e   t h e   o u t p u t   t o   e x t r a c t   e v e r y t h i n g   a f t e r   t h e   " P A R T N E R _ D I S P N A M E "   s u b s t r i n g . �  � � � l  � ��w�v�u�w  �v  �u   �  � � � r   � � � � � m   � � � � � � �   P A R T N E R _ D I S P N A M E � n      � � � 1   � ��t
�t 
txdl � 1   � ��s
�s 
ascr �  � � � r   � � � � � n   � � � � � 4  � ��r �
�r 
citm � m   � ��q�q�� � o   � ��p�p 0 	pdnresult 	pdnResult � o      �o�o 0 pdn   �  � � � r   �  � � � m   � � � � � � �   � n      � � � 1   � ��n
�n 
txdl � 1   � ��m
�m 
ascr �  � � � l �l�k�j�l  �k  �j   �  � � � l �i � ��i   � > 8 Add a formatted entry onto the end of the display list.    � � � � p   A d d   a   f o r m a t t e d   e n t r y   o n t o   t h e   e n d   o f   t h e   d i s p l a y   l i s t . �  � � � l �h�g�f�h  �g  �f   �  � � � r   � � � l  ��e�d � b   � � � b   � � � o  �c�c 0 callid callID � m   � � � � �    � o  �b�b 0 pdn  �e  �d   � l      �a�`  n        ;   o  �_�_ "0 displaycalllist displayCallList�a  �`   � �^ l �]�\�[�]  �\  �[  �^  �� 0 i   � m   u v�Z�Z  � n   v � m   } ��Y
�Y 
nmbr n  v } 2  y }�X
�X 
cobj o   v y�W�W "0 activecallslist activeCallsList��   � �V l �U�T�S�U  �T  �S  �V    m     		�                                                                                  SKYP  alis    H  Macintosh HD               �hnH+   ܦ	Skype.app                                                       ON�	L�        ����  	                Applications    �h_�      �	�     ܦ  $Macintosh HD:Applications: Skype.app   	 S k y p e . a p p    M a c i n t o s h   H D  Applications/Skype.app  / ��  ��  ��    

 l     �R�Q�P�R  �Q  �P    l     �O�O   � �  If there is more than one active call, display a selection list. Note that AppleScript's "choose from list" construct returns either a single element list object or false if the "Cancel" button is clicked.    ��     I f   t h e r e   i s   m o r e   t h a n   o n e   a c t i v e   c a l l ,   d i s p l a y   a   s e l e c t i o n   l i s t .   N o t e   t h a t   A p p l e S c r i p t ' s   " c h o o s e   f r o m   l i s t "   c o n s t r u c t   r e t u r n s   e i t h e r   a   s i n g l e   e l e m e n t   l i s t   o b j e c t   o r   f a l s e   i f   t h e   " C a n c e l "   b u t t o n   i s   c l i c k e d .  l     �N�M�L�N  �M  �L    l m�K�J Z  m�I ? % l #�H�G I #�F�E
�F .corecnte****       **** o  �D�D "0 displaycalllist displayCallList�E  �H  �G   m  #$�C�C  k  (^  l ((�B�A�@�B  �A  �@    !  r  (I"#" I (E�?$%
�? .gtqpchltns    @   @ ns  $ o  (+�>�> "0 displaycalllist displayCallList% �=&'
�= 
prmp& m  .1(( �)) . S e l e c t   c a l l   t o   h a n g   u p :' �<*+
�< 
appr* m  47,, �-- $ H a n g   U p   S k y p e   C a l l+ �;./
�; 
empL. m  >?�:
�: boovfals/ �9.�8
�9 
mlsl�8  # o      �7�7 0 selectedcall selectedCall! 010 l JJ�6�5�4�6  �5  �4  1 2�32 Z  J^34�2�13 = JO565 o  JM�0�0 0 selectedcall selectedCall6 m  MN�/
�/ boovfals4 k  RZ77 898 n RW:;: I  SW�.�-�,�. 0 hidelaunchbar HideLaunchBar�-  �,  ;  f  RS9 <�+< L  XZ�*�*  �+  �2  �1  �3  �I   r  am=>= n  ai?@? 4 di�)A
�) 
cobjA m  gh�(�( @ o  ad�'�' "0 displaycalllist displayCallList> o      �&�& 0 selectedcall selectedCall�K  �J   BCB l     �%�$�#�%  �$  �#  C DED l n�F�"�!F O  n�GHG k  r�II JKJ l rr� ���   �  �  K LML l rr�NO�  N L F Hang up the specified call. Display an error if something goes wrong.   O �PP �   H a n g   u p   t h e   s p e c i f i e d   c a l l .   D i s p l a y   a n   e r r o r   i f   s o m e t h i n g   g o e s   w r o n g .M QRQ l rr����  �  �  R STS r  r�UVU I r���W
� .sendskypnull��� ��� null�  W �XY
� 
cmndX b  t�Z[Z b  t�\]\ m  tw^^ �__  S E T   C A L L  ] n  w�`a` 4 ~��b
� 
cworb m  ��� a l w~c��c c  w~ded o  wz�� 0 selectedcall selectedCalle m  z}�
� 
ctxt�  �  [ m  ��ff �gg     S T A T U S   F I N I S H E DY �h�
� 
scrph o  ���� 0 
scriptname 
ScriptName�  V o      �� 0 statusresult statusResultT iji Z ��kl��k = ��mnm n  ��opo 4 ���
q
�
 
cworq m  ���	�	 p o  ���� 0 statusresult statusResultn m  ��rr �ss 
 E R R O Rl I ���tu
� .sysodlogaskr        TEXTt o  ���� 0 statusresult statusResultu �vw
� 
btnsv J  ��xx y�y m  ��zz �{{  O K�  w �|}
� 
dflt| m  ���� } �~� 
� 
disp~ m  ������ �   �  �  j �� n ����� I  ���������� 0 hidelaunchbar HideLaunchBar��  ��  �  f  ����  H m  no���                                                                                  SKYP  alis    H  Macintosh HD               �hnH+   ܦ	Skype.app                                                       ON�	L�        ����  	                Applications    �h_�      �	�     ܦ  $Macintosh HD:Applications: Skype.app   	 S k y p e . a p p    M a c i n t o s h   H D  Applications/Skype.app  / ��  �"  �!  E ��� l     ��������  ��  ��  � ��� i    ��� I      �������� 0 hidelaunchbar HideLaunchBar��  ��  � k     �� ��� r     	��� l    ������ I    ����
�� .earsffdralis        afdr� m     ��
�� appfegfp� �����
�� 
rtyp� m    ��
�� 
utxt��  ��  ��  � o      ���� 0 appname appName� ���� Z  
 ������� D   
 ��� o   
 ���� 0 appname appName� m    �� ���  L a u n c h B a r . a p p :� I   �����
�� .GURLGURLnull���    obj � m    �� ���   x - l a u n c h b a r : h i d e��  ��  ��  ��  � ���� l     ��������  ��  ��  ��       ��� ��������������  � �������������������������� 0 
scriptname 
ScriptName�� 0 hidelaunchbar HideLaunchBar
�� .aevtoappnull  �   � ****�� 0 activecalls activeCalls�� "0 activecallslist activeCallsList�� "0 displaycalllist displayCallList�� 0 callid callID�� 0 	pdnresult 	pdnResult�� 0 pdn  �� 0 selectedcall selectedCall�� 0 statusresult statusResult��  � ������������� 0 hidelaunchbar HideLaunchBar��  ��  � ���� 0 appname appName� ������������
�� appfegfp
�� 
rtyp
�� 
utxt
�� .earsffdralis        afdr
�� .GURLGURLnull���    obj �� ���l E�O�� 
�j Y h� �����������
�� .aevtoappnull  �   � ****� k    ���  �� �� D����  ��  ��  � ���� 0 i  � 5	�� )���������� >�� I���������� [���������������� � ��� � � ��������� � �����(��,����������^��f��rz
�� 
cmnd
�� 
scrp�� 
�� .sendskypnull��� ��� null�� 0 activecalls activeCalls
�� 
cwor
�� 
btns
�� 
dflt
�� 
disp�� 
�� .sysodlogaskr        TEXT�� 0 hidelaunchbar HideLaunchBar
�� 
cha �� 
�� 
TEXT�� "0 activecallslist activeCallsList�� "0 displaycalllist displayCallList
�� 
cobj
�� 
nmbr�� 0 callid callID�� 0 	pdnresult 	pdnResult
�� 
ascr
�� 
txdl
�� 
citm�� 0 pdn  
�� .corecnte****       ****
�� 
prmp
�� 
appr
�� 
empL
�� 
mlsl�� 
�� .gtqpchltns    @   @ ns  �� 0 selectedcall selectedCall
�� 
ctxt�� 0 statusresult statusResult����*���b   � E�O��k/�  ���kv�k�k� O)j+ OhY hO�a   )j+ OhY hO�[a \[Za \Zi2a &E�O��-E` OjvE` O �k_ a -a ,Ekh  _ a �/E` O*�a _ %a %�b   � E` O_ �k/a   _ �a kv�k�k� O)j+ OhY hOa _ a  ,FO_ a !i/E` "Oa #_ a  ,FO_ a $%_ "%_ 6FOP[OY�nOPUO_ j %k ;_ a &a 'a (a )a *fa +fa , -E` .O_ .f  )j+ OhY hY _ a k/E` .O� M*�a /_ .a 0&�k/%a 1%�b   � E` 2O_ 2�k/a 3  _ 2�a 4kv�k�k� Y hO)j+ U� ���  1 3 5� ����� �  �������������������������������� ���  1 3 5��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  � ����� �  �������������������������������� ���  1 3 5     N i c k   W y n j a��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  � ��� H C A L L   1 3 5   P A R T N E R _ D I S P N A M E   N i c k   W y n j a� ���    N i c k   W y n j a� ��� 4 C A L L   1 3 5   S T A T U S   I N P R O G R E S S��   ascr  ��ޭ