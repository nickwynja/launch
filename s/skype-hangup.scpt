FasdUAS 1.101.10   ��   ��    k             l     ��  ��    � � This script gets a list of the active Skype calls and, if there's more than one, provides a selection list. It then hangs up the specified call. Written by Dennis Rande, 2/28/08.     � 	 	f   T h i s   s c r i p t   g e t s   a   l i s t   o f   t h e   a c t i v e   S k y p e   c a l l s   a n d ,   i f   t h e r e ' s   m o r e   t h a n   o n e ,   p r o v i d e s   a   s e l e c t i o n   l i s t .   I t   t h e n   h a n g s   u p   t h e   s p e c i f i e d   c a l l .   W r i t t e n   b y   D e n n i s   R a n d e ,   2 / 2 8 / 0 8 .   
  
 l     ��������  ��  ��        j     �� �� 0 
scriptname 
ScriptName  m        �   $ H a n g   U p   S k y p e   C a l l      l     ��������  ��  ��        l    ����  O        k          l   ��������  ��  ��        l   ��  ��    � � Get a comma-delimited list of all active calls from Skype. If there are no active calls, the string "CALLS " is returned, so just exit.     �     G e t   a   c o m m a - d e l i m i t e d   l i s t   o f   a l l   a c t i v e   c a l l s   f r o m   S k y p e .   I f   t h e r e   a r e   n o   a c t i v e   c a l l s ,   t h e   s t r i n g   " C A L L S   "   i s   r e t u r n e d ,   s o   j u s t   e x i t .     !   l   ��������  ��  ��   !  " # " r     $ % $ I   ���� &
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
 	 /  3 4 3 l   ��������  ��  ��   4  5 6 5 Z    4 7 8���� 7 =    9 : 9 n     ; < ; 4   �� =
�� 
cwor = m    ����  < o    ���� 0 activecalls activeCalls : m     > > � ? ? 
 E R R O R 8 k    0 @ @  A B A I   *�� C D
�� .sysodlogaskr        TEXT C o    ���� 0 activecalls activeCalls D �� E F
�� 
btns E J    " G G  H�� H m      I I � J J  O K��   F �� K L
�� 
dflt K m   # $����  L �� M��
�� 
disp M m   % &���� ��   B  N�� N n  + 0 O P O I   , 0�������� 0 hidelaunchbar HideLaunchBar��  ��   P  f   + ,��  ��  ��   6  Q R Q l  5 5��������  ��  ��   R  S T S Z   5 I U V���� U =  5 : W X W o   5 6���� 0 activecalls activeCalls X m   6 9 Y Y � Z Z  C A L L S   V k   = E [ [  \ ] \ n  = B ^ _ ^ I   > B�������� 0 hidelaunchbar HideLaunchBar��  ��   _  f   = > ]  `�� ` L   C E a a m   C D��
�� boovtrue��  ��  ��   T  b c b l  J J��������  ��  ��   c  d e d l  J J�� f g��   f � � Strip off the "CALLS " substring (6 characters) from the beginning and then save the remaining comma-delimited list as an AppleScript list object.    g � h h&   S t r i p   o f f   t h e   " C A L L S   "   s u b s t r i n g   ( 6   c h a r a c t e r s )   f r o m   t h e   b e g i n n i n g   a n d   t h e n   s a v e   t h e   r e m a i n i n g   c o m m a - d e l i m i t e d   l i s t   a s   a n   A p p l e S c r i p t   l i s t   o b j e c t . e  i j i l  J J��������  ��  ��   j  k l k r   J _ m n m c   J ] o p o n   J Y q r q 7  K Y�� s t
�� 
cha  s m   Q U����  t m   V X������ r o   J K���� 0 activecalls activeCalls p m   Y \��
�� 
TEXT n o      ���� 0 activecalls activeCalls l  u v u r   ` g w x w n   ` c y z y 2  a c��
�� 
cwor z o   ` a���� 0 activecalls activeCalls x o      ���� "0 activecallslist activeCallsList v  { | { l  h h��������  ��  ��   |  } ~ } l  h h��  ���   �� Loop through the list object and get each active call's PARTNER_DISPNAME property from Skype. Exit if an error is encountered. Note the PSTN_NUMBER property also seems to get the call's phone number, but I dont know what it'll do with a Skype to Skype call. It seems like a better approach to use the PARTNER_DISPNAME property, which, I believe, provides the Skype username from a Skype to Skype call and the dialed phone number from a Skype to phone call.    � � � ��   L o o p   t h r o u g h   t h e   l i s t   o b j e c t   a n d   g e t   e a c h   a c t i v e   c a l l ' s   P A R T N E R _ D I S P N A M E   p r o p e r t y   f r o m   S k y p e .   E x i t   i f   a n   e r r o r   i s   e n c o u n t e r e d .   N o t e   t h e   P S T N _ N U M B E R   p r o p e r t y   a l s o   s e e m s   t o   g e t   t h e   c a l l ' s   p h o n e   n u m b e r ,   b u t   I   d o n t   k n o w   w h a t   i t ' l l   d o   w i t h   a   S k y p e   t o   S k y p e   c a l l .   I t   s e e m s   l i k e   a   b e t t e r   a p p r o a c h   t o   u s e   t h e   P A R T N E R _ D I S P N A M E   p r o p e r t y ,   w h i c h ,   I   b e l i e v e ,   p r o v i d e s   t h e   S k y p e   u s e r n a m e   f r o m   a   S k y p e   t o   S k y p e   c a l l   a n d   t h e   d i a l e d   p h o n e   n u m b e r   f r o m   a   S k y p e   t o   p h o n e   c a l l . ~  � � � l  h h��������  ��  ��   �  � � � r   h n � � � J   h j����   � o      ���� "0 displaycalllist displayCallList �  � � � l  o o��������  ��  ��   �  � � � Y   o ��� � ��� � k   � � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n   � � � � � 4   � ��� �
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
disp � m   � ����� ��   �  � � � n  � � � � � I   � �������� 0 hidelaunchbar HideLaunchBar��  �   �  f   � � �  ��~ � L   � ��}�}  �~  ��  ��   �  � � � l  � ��|�{�z�|  �{  �z   �  � � � l  � ��y � ��y   � � � The output of the above command looks like this: "CALL 1234 PARTNER_DISPNAME Dennis Rande" or "CALL 1234 PARTNER_DISPNAME +11234567890". Parse the output to extract everything after the "PARTNER_DISPNAME" substring.    � � � ��   T h e   o u t p u t   o f   t h e   a b o v e   c o m m a n d   l o o k s   l i k e   t h i s :   " C A L L   1 2 3 4   P A R T N E R _ D I S P N A M E   D e n n i s   R a n d e "   o r   " C A L L   1 2 3 4   P A R T N E R _ D I S P N A M E   + 1 1 2 3 4 5 6 7 8 9 0 " .   P a r s e   t h e   o u t p u t   t o   e x t r a c t   e v e r y t h i n g   a f t e r   t h e   " P A R T N E R _ D I S P N A M E "   s u b s t r i n g . �  � � � l  � ��x�w�v�x  �w  �v   �  � � � r   � � � � � m   � � � � � � �   P A R T N E R _ D I S P N A M E � n      � � � 1   � ��u
�u 
txdl � 1   � ��t
�t 
ascr �  � � � r   � � � � � n   � � � � � 4  � ��s �
�s 
citm � m   � ��r�r�� � o   � ��q�q 0 	pdnresult 	pdnResult � o      �p�p 0 pdn   �  � � � r   � � � � � m   � � � � � � �   � n      � � � 1   � ��o
�o 
txdl � 1   � ��n
�n 
ascr �  � � � l  � ��m�l�k�m  �l  �k   �  � � � l  � ��j � ��j   � > 8 Add a formatted entry onto the end of the display list.    � � � � p   A d d   a   f o r m a t t e d   e n t r y   o n t o   t h e   e n d   o f   t h e   d i s p l a y   l i s t . �  � � � l  � ��i�h�g�i  �h  �g   �  � � � r   � � � � l  �	 ��f�e � b   �	 � � � b   � � � � o   ��d�d 0 callid callID � m   � � � � �    � o  �c�c 0 pdn  �f  �e   � l      ��b�a � n          ;   o  	�`�` "0 displaycalllist displayCallList�b  �a   � �_ l �^�]�\�^  �]  �\  �_  �� 0 i   � m   r s�[�[  � n   s  m   z ~�Z
�Z 
nmbr n  s z 2  v z�Y
�Y 
cobj o   s v�X�X "0 activecallslist activeCallsList��   � �W l �V�U�T�V  �U  �T  �W    m     �                                                                                  SKYP  alis    L  Macinstosh HD              �6�fH+   "<	Skype.app                                                       |�	L�        ����  	                Applications    �7�      �	�     "<  %Macinstosh HD:Applications: Skype.app    	 S k y p e . a p p    M a c i n s t o s h   H D  Applications/Skype.app  / ��  ��  ��    	
	 l     �S�R�Q�S  �R  �Q  
  l     �P�P   � �  If there is more than one active call, display a selection list. Note that AppleScript's "choose from list" construct returns either a single element list object or false if the "Cancel" button is clicked.    ��     I f   t h e r e   i s   m o r e   t h a n   o n e   a c t i v e   c a l l ,   d i s p l a y   a   s e l e c t i o n   l i s t .   N o t e   t h a t   A p p l e S c r i p t ' s   " c h o o s e   f r o m   l i s t "   c o n s t r u c t   r e t u r n s   e i t h e r   a   s i n g l e   e l e m e n t   l i s t   o b j e c t   o r   f a l s e   i f   t h e   " C a n c e l "   b u t t o n   i s   c l i c k e d .  l     �O�N�M�O  �N  �M    l j�L�K Z  j�J ? " l  �I�H I  �G�F
�G .corecnte****       **** o  �E�E "0 displaycalllist displayCallList�F  �I  �H   m   !�D�D  k  %[  l %%�C�B�A�C  �B  �A     r  %F!"! I %B�@#$
�@ .gtqpchltns    @   @ ns  # o  %(�?�? "0 displaycalllist displayCallList$ �>%&
�> 
prmp% m  +.'' �(( . S e l e c t   c a l l   t o   h a n g   u p :& �=)*
�= 
appr) m  14++ �,, $ H a n g   U p   S k y p e   C a l l* �<-.
�< 
empL- m  ;<�;
�; boovfals. �:-�9
�: 
mlsl�9  " o      �8�8 0 selectedcall selectedCall  /0/ l GG�7�6�5�7  �6  �5  0 1�41 Z  G[23�3�22 = GL454 o  GJ�1�1 0 selectedcall selectedCall5 m  JK�0
�0 boovfals3 k  OW66 787 n OT9:9 I  PT�/�.�-�/ 0 hidelaunchbar HideLaunchBar�.  �-  :  f  OP8 ;�,; L  UW�+�+  �,  �3  �2  �4  �J   r  ^j<=< n  ^f>?> 4 af�*@
�* 
cobj@ m  de�)�) ? o  ^a�(�( "0 displaycalllist displayCallList= o      �'�' 0 selectedcall selectedCall�L  �K   ABA l     �&�%�$�&  �%  �$  B CDC l k�E�#�"E O  k�FGF k  o�HH IJI l oo�!� ��!  �   �  J KLK l oo�MN�  M L F Hang up the specified call. Display an error if something goes wrong.   N �OO �   H a n g   u p   t h e   s p e c i f i e d   c a l l .   D i s p l a y   a n   e r r o r   i f   s o m e t h i n g   g o e s   w r o n g .L PQP l oo����  �  �  Q RSR r  o�TUT I o���V
� .sendskypnull��� ��� null�  V �WX
� 
cmndW b  q�YZY b  q[\[ m  qt]] �^^  S E T   C A L L  \ n  t~_`_ 4 {~�a
� 
cwora m  |}�� ` l t{b��b c  t{cdc o  tw�� 0 selectedcall selectedCalld m  wz�
� 
ctxt�  �  Z m  �ee �ff     S T A T U S   F I N I S H E DX �g�
� 
scrpg o  ���� 0 
scriptname 
ScriptName�  U o      �� 0 statusresult statusResultS hih L  ��jj m  ���
� boovtruei klk Z ��mn��m = ��opo n  ��qrq 4 ���
s
�
 
cwors m  ���	�	 r o  ���� 0 statusresult statusResultp m  ��tt �uu 
 E R R O Rn I ���vw
� .sysodlogaskr        TEXTv o  ���� 0 statusresult statusResultw �xy
� 
btnsx J  ��zz {�{ m  ��|| �}}  O K�  y �~
� 
dflt~ m  ����  ��� 
� 
disp� m  ������ �   �  �  l ���� n ����� I  ���������� 0 hidelaunchbar HideLaunchBar��  ��  �  f  ����  G m  kl���                                                                                  SKYP  alis    L  Macinstosh HD              �6�fH+   "<	Skype.app                                                       |�	L�        ����  	                Applications    �7�      �	�     "<  %Macinstosh HD:Applications: Skype.app    	 S k y p e . a p p    M a c i n s t o s h   H D  Applications/Skype.app  / ��  �#  �"  D ��� l     ��������  ��  ��  � ��� i    ��� I      �������� 0 hidelaunchbar HideLaunchBar��  ��  � k     �� ��� r     	��� l    ������ I    ����
�� .earsffdralis        afdr� m     ��
�� appfegfp� �����
�� 
rtyp� m    ��
�� 
utxt��  ��  ��  � o      ���� 0 appname appName� ���� Z  
 ������� D   
 ��� o   
 ���� 0 appname appName� m    �� ���  L a u n c h B a r . a p p :� I   �����
�� .GURLGURLnull��� ��� TEXT� m    �� ���   x - l a u n c h b a r : h i d e��  ��  ��  ��  � ���� l     ��������  ��  ��  ��       ��� ����  � �������� 0 
scriptname 
ScriptName�� 0 hidelaunchbar HideLaunchBar
�� .aevtoappnull  �   � ****� ������������� 0 hidelaunchbar HideLaunchBar��  ��  � ���� 0 appname appName� ������������
�� appfegfp
�� 
rtyp
�� 
utxt
�� .earsffdralis        afdr
�� .GURLGURLnull��� ��� TEXT�� ���l E�O�� 
�j Y h� �����������
�� .aevtoappnull  �   � ****� k    ���  �� �� C����  ��  ��  � ���� 0 i  � 5�� )���������� >�� I���������� Y���������������� � ��� � � ��������� � �����'��+����������]��e��t|
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
ctxt�� 0 statusresult statusResult����*���b   � E�O��k/�  ���kv�k�k� O)j+ Y hO�a   )j+ OeY hO�[a \[Za \Zi2a &E�O��-E` OjvE` O �k_ a -a ,Ekh  _ a �/E` O*�a _ %a %�b   � E` O_ �k/a   _ �a kv�k�k� O)j+ OhY hOa _ a  ,FO_ a !i/E` "Oa #_ a  ,FO_ a $%_ "%_ 6FOP[OY�nOPUO_ j %k ;_ a &a 'a (a )a *fa +fa , -E` .O_ .f  )j+ OhY hY _ a k/E` .O� P*�a /_ .a 0&�k/%a 1%�b   � E` 2OeO_ 2�k/a 3  _ 2�a 4kv�k�k� Y hO)j+ Uascr  ��ޭ