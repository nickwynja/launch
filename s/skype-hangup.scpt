FasdUAS 1.101.10   ��   ��    k             l     ��  ��    � � This script gets a list of the active Skype calls and, if there's more than one, provides a selection list. It then hangs up the specified call. Written by Dennis Rande, 2/28/08.     � 	 	f   T h i s   s c r i p t   g e t s   a   l i s t   o f   t h e   a c t i v e   S k y p e   c a l l s   a n d ,   i f   t h e r e ' s   m o r e   t h a n   o n e ,   p r o v i d e s   a   s e l e c t i o n   l i s t .   I t   t h e n   h a n g s   u p   t h e   s p e c i f i e d   c a l l .   W r i t t e n   b y   D e n n i s   R a n d e ,   2 / 2 8 / 0 8 .   
  
 l     ��������  ��  ��        j     �� �� 0 
scriptname 
ScriptName  m        �   $ H a n g   U p   S k y p e   C a l l      l     ��������  ��  ��        l    ����  O        k          l   ��������  ��  ��        l   ��  ��    � � Get a comma-delimited list of all active calls from Skype. If there are no active calls, the string "CALLS " is returned, so just exit.     �     G e t   a   c o m m a - d e l i m i t e d   l i s t   o f   a l l   a c t i v e   c a l l s   f r o m   S k y p e .   I f   t h e r e   a r e   n o   a c t i v e   c a l l s ,   t h e   s t r i n g   " C A L L S   "   i s   r e t u r n e d ,   s o   j u s t   e x i t .     !   l   ��������  ��  ��   !  " # " r     $ % $ I   ���� &
�� .sendskypnull��� ��� null��   & �� ' (
�� 
cmnd ' m     ) ) � * * $ S E A R C H   A C T I V E C A L L S ( �� +��
�� 
scrp + o    ���� 0 
scriptname 
ScriptName��   % o      ���� 0 activecalls activeCalls #  , - , l   ��������  ��  ��   -  . / . l    �� 0 1��   0]W
	-- Neither of these commands seem to return anything. So I'm not sure how to get a list of voicemail IDs.
	
	set voicemails to send command "SEARCH VOICEMAILS" script name ScriptName
	set MissedVoicemails to send command "SEARCH MISSEDVOICEMAILS" script name ScriptName
	
	display dialog voicemails
	display dialog MissedVoicemails
	return
	    1 � 2 2� 
 	 - -   N e i t h e r   o f   t h e s e   c o m m a n d s   s e e m   t o   r e t u r n   a n y t h i n g .   S o   I ' m   n o t   s u r e   h o w   t o   g e t   a   l i s t   o f   v o i c e m a i l   I D s . 
 	 
 	 s e t   v o i c e m a i l s   t o   s e n d   c o m m a n d   " S E A R C H   V O I C E M A I L S "   s c r i p t   n a m e   S c r i p t N a m e 
 	 s e t   M i s s e d V o i c e m a i l s   t o   s e n d   c o m m a n d   " S E A R C H   M I S S E D V O I C E M A I L S "   s c r i p t   n a m e   S c r i p t N a m e 
 	 
 	 d i s p l a y   d i a l o g   v o i c e m a i l s 
 	 d i s p l a y   d i a l o g   M i s s e d V o i c e m a i l s 
 	 r e t u r n 
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
disp M m   % &���� ��   B  N O N n  + 0 P Q P I   , 0�������� 0 hidelaunchbar HideLaunchBar��  ��   Q  f   + , O  R�� R L   1 3����  ��  ��  ��   6  S T S l  8 8��������  ��  ��   T  U V U l  8 8�� W X��   W � � Strip off the "CALLS " substring (6 characters) from the beginning and then save the remaining comma-delimited list as an AppleScript list object.    X � Y Y&   S t r i p   o f f   t h e   " C A L L S   "   s u b s t r i n g   ( 6   c h a r a c t e r s )   f r o m   t h e   b e g i n n i n g   a n d   t h e n   s a v e   t h e   r e m a i n i n g   c o m m a - d e l i m i t e d   l i s t   a s   a n   A p p l e S c r i p t   l i s t   o b j e c t . V  Z [ Z Q   8 d \ ] ^ \ k   ; Z _ _  ` a ` r   ; P b c b c   ; N d e d n   ; J f g f 7  < J�� h i
�� 
cha  h m   B F����  i m   G I������ g o   ; <���� 0 activecalls activeCalls e m   J M��
�� 
TEXT c o      ���� 0 activecalls activeCalls a  j k j r   Q X l m l n   Q T n o n 2  R T��
�� 
cwor o o   Q R���� 0 activecalls activeCalls m o      ���� "0 activecallslist activeCallsList k  p�� p l  Y Y��������  ��  ��  ��   ] R      ������
�� .ascrerr ****      � ****��  ��   ^ L   b d q q m   b c��
�� boovtrue [  r s r l  e e��������  ��  ��   s  t u t l  e e�� v w��   v�� Loop through the list object and get each active call's PARTNER_DISPNAME property from Skype. Exit if an error is encountered. Note the PSTN_NUMBER property also seems to get the call's phone number, but I dont know what it'll do with a Skype to Skype call. It seems like a better approach to use the PARTNER_DISPNAME property, which, I believe, provides the Skype username from a Skype to Skype call and the dialed phone number from a Skype to phone call.    w � x x�   L o o p   t h r o u g h   t h e   l i s t   o b j e c t   a n d   g e t   e a c h   a c t i v e   c a l l ' s   P A R T N E R _ D I S P N A M E   p r o p e r t y   f r o m   S k y p e .   E x i t   i f   a n   e r r o r   i s   e n c o u n t e r e d .   N o t e   t h e   P S T N _ N U M B E R   p r o p e r t y   a l s o   s e e m s   t o   g e t   t h e   c a l l ' s   p h o n e   n u m b e r ,   b u t   I   d o n t   k n o w   w h a t   i t ' l l   d o   w i t h   a   S k y p e   t o   S k y p e   c a l l .   I t   s e e m s   l i k e   a   b e t t e r   a p p r o a c h   t o   u s e   t h e   P A R T N E R _ D I S P N A M E   p r o p e r t y ,   w h i c h ,   I   b e l i e v e ,   p r o v i d e s   t h e   S k y p e   u s e r n a m e   f r o m   a   S k y p e   t o   S k y p e   c a l l   a n d   t h e   d i a l e d   p h o n e   n u m b e r   f r o m   a   S k y p e   t o   p h o n e   c a l l . u  y z y l  e e��������  ��  ��   z  { | { r   e k } ~ } J   e g����   ~ o      ���� "0 displaycalllist displayCallList |   �  l  l l��������  ��  ��   �  � � � Y   l ��� � ��� � k   � � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n   � � � � � 4   � ��� �
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
disp � m   � ����� ��   �  � � � n  � � � � � I   � ��������� 0 hidelaunchbar HideLaunchBar��  ��   �  f   � � �  ��� � L   � �����  ��  ��  ��   �  � � � l  � ��������  ��  �   �  � � � l  � ��~ � ��~   � � � The output of the above command looks like this: "CALL 1234 PARTNER_DISPNAME Dennis Rande" or "CALL 1234 PARTNER_DISPNAME +11234567890". Parse the output to extract everything after the "PARTNER_DISPNAME" substring.    � � � ��   T h e   o u t p u t   o f   t h e   a b o v e   c o m m a n d   l o o k s   l i k e   t h i s :   " C A L L   1 2 3 4   P A R T N E R _ D I S P N A M E   D e n n i s   R a n d e "   o r   " C A L L   1 2 3 4   P A R T N E R _ D I S P N A M E   + 1 1 2 3 4 5 6 7 8 9 0 " .   P a r s e   t h e   o u t p u t   t o   e x t r a c t   e v e r y t h i n g   a f t e r   t h e   " P A R T N E R _ D I S P N A M E "   s u b s t r i n g . �  � � � l  � ��}�|�{�}  �|  �{   �  � � � r   � � � � � m   � � � � � � �   P A R T N E R _ D I S P N A M E � n      � � � 1   � ��z
�z 
txdl � 1   � ��y
�y 
ascr �  � � � r   � � � � � n   � � � � � 4  � ��x �
�x 
citm � m   � ��w�w�� � o   � ��v�v 0 	pdnresult 	pdnResult � o      �u�u 0 pdn   �  � � � r   � � � � � m   � � � � � � �   � n      � � � 1   � ��t
�t 
txdl � 1   � ��s
�s 
ascr �  � � � l  � ��r�q�p�r  �q  �p   �  � � � l  � ��o � ��o   � > 8 Add a formatted entry onto the end of the display list.    � � � � p   A d d   a   f o r m a t t e d   e n t r y   o n t o   t h e   e n d   o f   t h e   d i s p l a y   l i s t . �  � � � l  � ��n�m�l�n  �m  �l   �  � � � r   � � � � l  � ��k�j � b   � � � � b   � � � � o   � ��i�i 0 callid callID � m   � � � � � �    � o  �h�h 0 pdn  �k  �j   � l      ��g�f � n       � � �  ;  	
 � o  	�e�e "0 displaycalllist displayCallList�g  �f   �  ��d � l �c�b�a�c  �b  �a  �d  �� 0 i   � m   o p�`�`  � n   p | � � � m   w {�_
�_ 
nmbr � n  p w � � � 2  s w�^
�^ 
cobj � o   p s�]�] "0 activecallslist activeCallsList��   �  ��\ � l �[�Z�Y�[  �Z  �Y  �\    m      � ��                                                                                  SKYP  alis    H  Macintosh HD               �hnH+   ܦ	Skype.app                                                       ON�	L�        ����  	                Applications    �h_�      �	�     ܦ  $Macintosh HD:Applications: Skype.app   	 S k y p e . a p p    M a c i n t o s h   H D  Applications/Skype.app  / ��  ��  ��       l     �X�W�V�X  �W  �V    l     �U�U   � �  If there is more than one active call, display a selection list. Note that AppleScript's "choose from list" construct returns either a single element list object or false if the "Cancel" button is clicked.    ��     I f   t h e r e   i s   m o r e   t h a n   o n e   a c t i v e   c a l l ,   d i s p l a y   a   s e l e c t i o n   l i s t .   N o t e   t h a t   A p p l e S c r i p t ' s   " c h o o s e   f r o m   l i s t "   c o n s t r u c t   r e t u r n s   e i t h e r   a   s i n g l e   e l e m e n t   l i s t   o b j e c t   o r   f a l s e   i f   t h e   " C a n c e l "   b u t t o n   i s   c l i c k e d .  l     �T�S�R�T  �S  �R   	
	 l g�Q�P Z  g�O ?  l �N�M I �L�K
�L .corecnte****       **** o  �J�J "0 displaycalllist displayCallList�K  �N  �M   m  �I�I  k  "X  l ""�H�G�F�H  �G  �F    r  "C I "?�E
�E .gtqpchltns    @   @ ns   o  "%�D�D "0 displaycalllist displayCallList �C
�C 
prmp m  (+ � . S e l e c t   c a l l   t o   h a n g   u p : �B !
�B 
appr  m  .1"" �## $ H a n g   U p   S k y p e   C a l l! �A$%
�A 
empL$ m  89�@
�@ boovfals% �?$�>
�? 
mlsl�>   o      �=�= 0 selectedcall selectedCall &'& l DD�<�;�:�<  �;  �:  ' (�9( Z  DX)*�8�7) = DI+,+ o  DG�6�6 0 selectedcall selectedCall, m  GH�5
�5 boovfals* k  LT-- ./. n LQ010 I  MQ�4�3�2�4 0 hidelaunchbar HideLaunchBar�3  �2  1  f  LM/ 2�12 L  RT�0�0  �1  �8  �7  �9  �O   r  [g343 n  [c565 4 ^c�/7
�/ 
cobj7 m  ab�.�. 6 o  [^�-�- "0 displaycalllist displayCallList4 o      �,�, 0 selectedcall selectedCall�Q  �P  
 898 l     �+�*�)�+  �*  �)  9 :;: l h�<�(�'< O  h�=>= k  l�?? @A@ l ll�&�%�$�&  �%  �$  A BCB l ll�#DE�#  D L F Hang up the specified call. Display an error if something goes wrong.   E �FF �   H a n g   u p   t h e   s p e c i f i e d   c a l l .   D i s p l a y   a n   e r r o r   i f   s o m e t h i n g   g o e s   w r o n g .C GHG l ll�"�!� �"  �!  �   H IJI r  l�KLK I l���M
� .sendskypnull��� ��� null�  M �NO
� 
cmndN b  n�PQP b  n|RSR m  nqTT �UU  S E T   C A L L  S n  q{VWV 4 x{�X
� 
cworX m  yz�� W l qxY��Y c  qxZ[Z o  qt�� 0 selectedcall selectedCall[ m  tw�
� 
ctxt�  �  Q m  |\\ �]]     S T A T U S   F I N I S H E DO �^�
� 
scrp^ o  ���� 0 
scriptname 
ScriptName�  L o      �� 0 statusresult statusResultJ _`_ L  ��aa m  ���
� boovtrue` bcb Z ��de��d = ��fgf n  ��hih 4 ���j
� 
cworj m  ���� i o  ���� 0 statusresult statusResultg m  ��kk �ll 
 E R R O Re I ���mn
� .sysodlogaskr        TEXTm o  ���� 0 statusresult statusResultn �
op
�
 
btnso J  ��qq r�	r m  ��ss �tt  O K�	  p �uv
� 
dfltu m  ���� v �w�
� 
dispw m  ���� �  �  �  c x�x n ��yzy I  ����� � 0 hidelaunchbar HideLaunchBar�  �   z  f  ���  > m  hi{{�                                                                                  SKYP  alis    H  Macintosh HD               �hnH+   ܦ	Skype.app                                                       ON�	L�        ����  	                Applications    �h_�      �	�     ܦ  $Macintosh HD:Applications: Skype.app   	 S k y p e . a p p    M a c i n t o s h   H D  Applications/Skype.app  / ��  �(  �'  ; |}| l     ��������  ��  ��  } ~~ i    ��� I      �������� 0 hidelaunchbar HideLaunchBar��  ��  � k     �� ��� r     	��� l    ������ I    ����
�� .earsffdralis        afdr� m     ��
�� appfegfp� �����
�� 
rtyp� m    ��
�� 
utxt��  ��  ��  � o      ���� 0 appname appName� ���� Z  
 ������� D   
 ��� o   
 ���� 0 appname appName� m    �� ���  L a u n c h B a r . a p p :� I   �����
�� .GURLGURLnull��� ��� TEXT� m    �� ���   x - l a u n c h b a r : h i d e��  ��  ��  ��   ���� l     ��������  ��  ��  ��       ��� ��������������  � �������������������������� 0 
scriptname 
ScriptName�� 0 hidelaunchbar HideLaunchBar
�� .aevtoappnull  �   � ****�� 0 activecalls activeCalls�� "0 activecallslist activeCallsList�� "0 displaycalllist displayCallList�� 0 callid callID�� 0 	pdnresult 	pdnResult�� 0 pdn  �� 0 selectedcall selectedCall�� 0 statusresult statusResult��  � ������������� 0 hidelaunchbar HideLaunchBar��  ��  � ���� 0 appname appName� ������������
�� appfegfp
�� 
rtyp
�� 
utxt
�� .earsffdralis        afdr
�� .GURLGURLnull��� ��� TEXT�� ���l E�O�� 
�j Y h� �����������
�� .aevtoappnull  �   � ****� k    ���  �� 	�� :����  ��  ��  � ���� 0 i  � 6 ��� )���������� >�� I������������������������������ � ��� � � ��������� � �������"����������T��\��ks
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
TEXT�� "0 activecallslist activeCallsList��  ��  �� "0 displaycalllist displayCallList
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
ctxt�� 0 statusresult statusResult����*���b   � E�O��k/�  ���kv�k�k� O)j+ OhY hO $�[a \[Za \Zi2a &E�O��-E` OPW 	X  eOjvE` O �k_ a -a ,Ekh  _ a �/E` O*�a _ %a %�b   � E` O_ �k/a   _ �a kv�k�k� O)j+ OhY hOa _  a !,FO_ a "i/E` #Oa $_  a !,FO_ a %%_ #%_ 6FOP[OY�nOPUO_ j &k ;_ a 'a (a )a *a +fa ,fa - .E` /O_ /f  )j+ OhY hY _ a k/E` /O� P*�a 0_ /a 1&�k/%a 2%�b   � E` 3OeO_ 3�k/a 4  _ 3�a 5kv�k�k� Y hO)j+ U� ���  3 6 4� ����� �  �������������������������������� ���  3 6 4��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  � ����� �  �������������������������������� ���  3 6 4     N i c k   W y n j a��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  � ��� H C A L L   3 6 4   P A R T N E R _ D I S P N A M E   N i c k   W y n j a� ���    N i c k   W y n j a� ��� 4 C A L L   3 6 4   S T A T U S   I N P R O G R E S S��   ascr  ��ޭ