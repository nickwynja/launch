FasdUAS 1.101.10   ��   ��    k             l      ��  ��   NH
This script gets a list of incoming Skype calls and, if there's more than one, provides a selection list. It then declines the specified call, sending it to voice mail. Written by Dennis Rande, 5/8/08.

NOTE: If you have Skype configured to repeatedly bounce its Dock icon on incoming calls, it will continue to do so until you bring Skype to the front. However, for quicker operation with LaunchBar, this script *does not* make Skype the front-most application, so Skype's Dock icon will continue to bounce even after the script has declined the call.

To work around this annoyance, you have two options:

1) Turn off the bouncing Dock icon (or just don't let it repeat) in Skype's preferences. To do this, go to Skype --> Preferences --> Notifications and select "Incoming Call" from the Event menu. Then uncheck the "Bounce icon in the Dock" setting, or just uncheck its "Repeat" option.

2) Tell this script to automatically make Skype the front-most application when declining a call. To do this, set the BringSkypeToFront property to true, like this:

		property BringSkypeToFront : true
     � 	 	� 
 T h i s   s c r i p t   g e t s   a   l i s t   o f   i n c o m i n g   S k y p e   c a l l s   a n d ,   i f   t h e r e ' s   m o r e   t h a n   o n e ,   p r o v i d e s   a   s e l e c t i o n   l i s t .   I t   t h e n   d e c l i n e s   t h e   s p e c i f i e d   c a l l ,   s e n d i n g   i t   t o   v o i c e   m a i l .   W r i t t e n   b y   D e n n i s   R a n d e ,   5 / 8 / 0 8 . 
 
 N O T E :   I f   y o u   h a v e   S k y p e   c o n f i g u r e d   t o   r e p e a t e d l y   b o u n c e   i t s   D o c k   i c o n   o n   i n c o m i n g   c a l l s ,   i t   w i l l   c o n t i n u e   t o   d o   s o   u n t i l   y o u   b r i n g   S k y p e   t o   t h e   f r o n t .   H o w e v e r ,   f o r   q u i c k e r   o p e r a t i o n   w i t h   L a u n c h B a r ,   t h i s   s c r i p t   * d o e s   n o t *   m a k e   S k y p e   t h e   f r o n t - m o s t   a p p l i c a t i o n ,   s o   S k y p e ' s   D o c k   i c o n   w i l l   c o n t i n u e   t o   b o u n c e   e v e n   a f t e r   t h e   s c r i p t   h a s   d e c l i n e d   t h e   c a l l . 
 
 T o   w o r k   a r o u n d   t h i s   a n n o y a n c e ,   y o u   h a v e   t w o   o p t i o n s : 
 
 1 )   T u r n   o f f   t h e   b o u n c i n g   D o c k   i c o n   ( o r   j u s t   d o n ' t   l e t   i t   r e p e a t )   i n   S k y p e ' s   p r e f e r e n c e s .   T o   d o   t h i s ,   g o   t o   S k y p e   - - >   P r e f e r e n c e s   - - >   N o t i f i c a t i o n s   a n d   s e l e c t   " I n c o m i n g   C a l l "   f r o m   t h e   E v e n t   m e n u .   T h e n   u n c h e c k   t h e   " B o u n c e   i c o n   i n   t h e   D o c k "   s e t t i n g ,   o r   j u s t   u n c h e c k   i t s   " R e p e a t "   o p t i o n . 
 
 2 )   T e l l   t h i s   s c r i p t   t o   a u t o m a t i c a l l y   m a k e   S k y p e   t h e   f r o n t - m o s t   a p p l i c a t i o n   w h e n   d e c l i n i n g   a   c a l l .   T o   d o   t h i s ,   s e t   t h e   B r i n g S k y p e T o F r o n t   p r o p e r t y   t o   t r u e ,   l i k e   t h i s : 
 
 	 	 p r o p e r t y   B r i n g S k y p e T o F r o n t   :   t r u e 
   
  
 l     ��������  ��  ��        j     �� �� &0 bringskypetofront BringSkypeToFront  m     ��
�� boovfals      j    �� �� 0 
scriptname 
ScriptName  m       �   $ D e c l i n e   S k y p e   C a l l      l     ��������  ��  ��        l   v ����  O    v    k   u       l   ��������  ��  ��        l   ��   !��     � � Get a comma-delimited list of all active calls from Skype. If there are no active calls, the string "CALLS " is returned, so just exit.    ! � " "   G e t   a   c o m m a - d e l i m i t e d   l i s t   o f   a l l   a c t i v e   c a l l s   f r o m   S k y p e .   I f   t h e r e   a r e   n o   a c t i v e   c a l l s ,   t h e   s t r i n g   " C A L L S   "   i s   r e t u r n e d ,   s o   j u s t   e x i t .   # $ # l   ��������  ��  ��   $  % & % r     ' ( ' I   ���� )
�� .sendskypnull��� ��� null��   ) �� * +
�� 
cmnd * m     , , � - - $ S E A R C H   A C T I V E C A L L S + �� .��
�� 
scrp . o    ���� 0 
scriptname 
ScriptName��   ( o      ���� 0 activecalls activeCalls &  / 0 / l   ��������  ��  ��   0  1 2 1 Z    7 3 4���� 3 =    5 6 5 n     7 8 7 4   �� 9
�� 
cwor 9 m    ����  8 o    ���� 0 activecalls activeCalls 6 m     : : � ; ; 
 E R R O R 4 k    3 < <  = > = I   *�� ? @
�� .sysodlogaskr        TEXT ? o    ���� 0 activecalls activeCalls @ �� A B
�� 
btns A J    " C C  D�� D m      E E � F F  O K��   B �� G H
�� 
dflt G m   # $����  H �� I��
�� 
disp I m   % &���� ��   >  J K J n  + 0 L M L I   , 0�������� 0 hidelaunchbar HideLaunchBar��  ��   M  f   + , K  N�� N L   1 3����  ��  ��  ��   2  O P O l  8 8��������  ��  ��   P  Q R Q Z   8 L S T���� S =  8 = U V U o   8 9���� 0 activecalls activeCalls V m   9 < W W � X X  C A L L S   T k   @ H Y Y  Z [ Z n  @ E \ ] \ I   A E�������� 0 hidelaunchbar HideLaunchBar��  ��   ]  f   @ A [  ^�� ^ L   F H����  ��  ��  ��   R  _ ` _ l  M M��������  ��  ��   `  a b a l  M M�� c d��   c � � Strip off the "CALLS " substring (6 characters) from the beginning and then save the remaining comma-delimited list as an AppleScript list object.    d � e e&   S t r i p   o f f   t h e   " C A L L S   "   s u b s t r i n g   ( 6   c h a r a c t e r s )   f r o m   t h e   b e g i n n i n g   a n d   t h e n   s a v e   t h e   r e m a i n i n g   c o m m a - d e l i m i t e d   l i s t   a s   a n   A p p l e S c r i p t   l i s t   o b j e c t . b  f g f l  M M��������  ��  ��   g  h i h r   M b j k j c   M ` l m l n   M \ n o n 7  N \�� p q
�� 
cha  p m   T X����  q m   Y [������ o o   M N���� 0 activecalls activeCalls m m   \ _��
�� 
TEXT k o      ���� 0 activecalls activeCalls i  r s r r   c j t u t n   c f v w v 2  d f��
�� 
cwor w o   c d���� 0 activecalls activeCalls u o      ���� "0 activecallslist activeCallsList s  x y x l  k k��������  ��  ��   y  z { z l  k k�� | }��   | Loop through the list object and get all the incoming calls (those with a state of "RINGING"), retrieving their PARTNER_DISPNAME property from Skype. Exit if an error is encountered. Note the PSTN_NUMBER property also seems to get the call's phone number, but I dont know what it'll do with a Skype to Skype call. It seems like a better approach to use the PARTNER_DISPNAME property, which, I believe, provides the Skype username from a Skype to Skype call and the dialed phone number from a Skype to phone call.    } � ~ ~   L o o p   t h r o u g h   t h e   l i s t   o b j e c t   a n d   g e t   a l l   t h e   i n c o m i n g   c a l l s   ( t h o s e   w i t h   a   s t a t e   o f   " R I N G I N G " ) ,   r e t r i e v i n g   t h e i r   P A R T N E R _ D I S P N A M E   p r o p e r t y   f r o m   S k y p e .   E x i t   i f   a n   e r r o r   i s   e n c o u n t e r e d .   N o t e   t h e   P S T N _ N U M B E R   p r o p e r t y   a l s o   s e e m s   t o   g e t   t h e   c a l l ' s   p h o n e   n u m b e r ,   b u t   I   d o n t   k n o w   w h a t   i t ' l l   d o   w i t h   a   S k y p e   t o   S k y p e   c a l l .   I t   s e e m s   l i k e   a   b e t t e r   a p p r o a c h   t o   u s e   t h e   P A R T N E R _ D I S P N A M E   p r o p e r t y ,   w h i c h ,   I   b e l i e v e ,   p r o v i d e s   t h e   S k y p e   u s e r n a m e   f r o m   a   S k y p e   t o   S k y p e   c a l l   a n d   t h e   d i a l e d   p h o n e   n u m b e r   f r o m   a   S k y p e   t o   p h o n e   c a l l . {   �  l  k k��������  ��  ��   �  � � � r   k q � � � J   k m����   � o      ���� "0 displaycalllist displayCallList �  � � � l  r r��������  ��  ��   �  � � � Y   rs ��� � ��� � k   �n � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 i   � o   � ����� "0 activecallslist activeCallsList � o      ���� 0 callid callID �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �    Check if call is ringing.    � � � � 4   C h e c k   i f   c a l l   i s   r i n g i n g . �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � I  � ����� �
�� .sendskypnull��� ��� null��   � �� � �
�� 
cmnd � b   � � � � � b   � � � � � m   � � � � � � �  G E T   C A L L   � o   � ����� 0 callid callID � m   � � � � � � �    S T A T U S � �� ���
�� 
scrp � o   � ����� 0 
scriptname 
ScriptName��   � o      ���� 0 statusresult statusResult �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ����� � =  � � � � � n   � � � � � 4  � ��� �
�� 
cwor � m   � �����  � o   � ����� 0 statusresult statusResult � m   � � � � � � � 
 E R R O R � k   � � � �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � o   � ����� 0 statusresult statusResult � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��   � �� � �
�� 
dflt � m   � �����  � �� ���
�� 
disp � m   � ��� ��   �  � � � n  � � � � � I   � ��~�}�|�~ 0 hidelaunchbar HideLaunchBar�}  �|   �  f   � � �  ��{ � L   � ��z�z  �{  ��  ��   �  � � � l  � ��y�x�w�y  �x  �w   �  � � � Z   �l � ��v�u � =  � � � � � n   � � � � � 4  � ��t �
�t 
cwor � m   � ��s�s�� � o   � ��r�r 0 statusresult statusResult � m   � � � � � � �  R I N G I N G � k   �h � �  � � � l  � ��q�p�o�q  �p  �o   �  � � � r   � � � � I  � �n�m �
�n .sendskypnull��� ��� null�m   � �l � �
�l 
cmnd � b   � � � � � b   � � � � � m   � � � � � � �  G E T   C A L L   � o   � ��k�k 0 callid callID � m   � � � � � � � "   P A R T N E R _ D I S P N A M E � �j ��i
�j 
scrp � o   � ��h�h 0 
scriptname 
ScriptName�i   � o      �g�g 0 	pdnresult 	pdnResult �  � � � l �f�e�d�f  �e  �d   �  � � � Z  0 � ��c�b � =  � � � n   � � � 4 �a �
�a 
cwor � m  	
�`�`  � o  �_�_ 0 	pdnresult 	pdnResult � m   � � � � � 
 E R R O R � k  , � �  � � � I #�^ � 
�^ .sysodlogaskr        TEXT � o  �]�] 0 	pdnresult 	pdnResult  �\
�\ 
btns J   �[ m   �  O K�[   �Z
�Z 
dflt m  �Y�Y  �X	�W
�X 
disp	 m  �V�V �W   � 

 n $) I  %)�U�T�S�U 0 hidelaunchbar HideLaunchBar�T  �S    f  $% �R L  *,�Q�Q  �R  �c  �b   �  l 11�P�O�N�P  �O  �N    l 11�M�M   � � The output of the above command looks like this: "CALL 1234 PARTNER_DISPNAME Dennis Rande" or "CALL 1234 PARTNER_DISPNAME +11234567890". Parse the output to extract everything after the "PARTNER_DISPNAME" substring.    ��   T h e   o u t p u t   o f   t h e   a b o v e   c o m m a n d   l o o k s   l i k e   t h i s :   " C A L L   1 2 3 4   P A R T N E R _ D I S P N A M E   D e n n i s   R a n d e "   o r   " C A L L   1 2 3 4   P A R T N E R _ D I S P N A M E   + 1 1 2 3 4 5 6 7 8 9 0 " .   P a r s e   t h e   o u t p u t   t o   e x t r a c t   e v e r y t h i n g   a f t e r   t h e   " P A R T N E R _ D I S P N A M E "   s u b s t r i n g .  l 11�L�K�J�L  �K  �J    r  1< m  14 �   P A R T N E R _ D I S P N A M E n      1  7;�I
�I 
txdl 1  47�H
�H 
ascr  !  r  =I"#" n  =E$%$ 4 @E�G&
�G 
citm& m  CD�F�F��% o  =@�E�E 0 	pdnresult 	pdnResult# o      �D�D 0 pdn  ! '(' r  JU)*) m  JM++ �,,  * n     -.- 1  PT�C
�C 
txdl. 1  MP�B
�B 
ascr( /0/ l VV�A�@�?�A  �@  �?  0 121 l VV�>34�>  3 > 8 Add a formatted entry onto the end of the display list.   4 �55 p   A d d   a   f o r m a t t e d   e n t r y   o n t o   t h e   e n d   o f   t h e   d i s p l a y   l i s t .2 676 l VV�=�<�;�=  �<  �;  7 898 r  Vf:;: l Va<�:�9< b  Va=>= b  V]?@? o  VY�8�8 0 callid callID@ m  Y\AA �BB   > o  ]`�7�7 0 pdn  �:  �9  ; l     C�6�5C n      DED  ;  deE o  ad�4�4 "0 displaycalllist displayCallList�6  �5  9 F�3F l gg�2�1�0�2  �1  �0  �3  �v  �u   � G�/G l mm�.�-�,�.  �-  �,  �/  �� 0 i   � m   u v�+�+  � n   v �HIH m   } ��*
�* 
nmbrI n  v }JKJ 2  y }�)
�) 
cobjK o   v y�(�( "0 activecallslist activeCallsList��   � L�'L l tt�&�%�$�&  �%  �$  �'    m     MM�                                                                                  SKYP  alis    H  Macintosh HD               �hnH+   ܦ	Skype.app                                                       ON�	L�        ����  	                Applications    �h_�      �	�     ܦ  $Macintosh HD:Applications: Skype.app   	 S k y p e . a p p    M a c i n t o s h   H D  Applications/Skype.app  / ��  ��  ��    NON l     �#�"�!�#  �"  �!  O PQP l     � RS�   R � �  If there is more than one ringing call, display a selection list. Note that AppleScript's "choose from list" construct returns either a single element list object or false if the "Cancel" button is clicked.   S �TT�     I f   t h e r e   i s   m o r e   t h a n   o n e   r i n g i n g   c a l l ,   d i s p l a y   a   s e l e c t i o n   l i s t .   N o t e   t h a t   A p p l e S c r i p t ' s   " c h o o s e   f r o m   l i s t "   c o n s t r u c t   r e t u r n s   e i t h e r   a   s i n g l e   e l e m e n t   l i s t   o b j e c t   o r   f a l s e   i f   t h e   " C a n c e l "   b u t t o n   i s   c l i c k e d .Q UVU l     ����  �  �  V WXW l w�Y��Y Z  w�Z[\]Z = w�^_^ l w~`��` I w~�a�
� .corecnte****       ****a o  wz�� "0 displaycalllist displayCallList�  �  �  _ m  ~��  [ k  ��bb cdc n ��efe I  ������ 0 hidelaunchbar HideLaunchBar�  �  f  f  ��d g�g L  ����  �  \ hih ? ��jkj l ��l��l I ���m�
� .corecnte****       ****m o  ���� "0 displaycalllist displayCallList�  �  �  k m  ���
�
 i n�	n k  ��oo pqp r  ��rsr I ���tu
� .gtqpchltns    @   @ ns  t o  ���� "0 displaycalllist displayCallListu �vw
� 
prmpv m  ��xx �yy . S e l e c t   c a l l   t o   d e c l i n e :w �z{
� 
apprz m  ��|| �}} $ D e c l i n e   S k y p e   C a l l{ �~
� 
empL~ m  ���
� boovfals �~�
� 
mlsl�  s o      � �  0 selectedcall selectedCallq ���� Z  ��������� = ����� o  ������ 0 selectedcall selectedCall� m  ����
�� boovfals� k  ���� ��� n ����� I  ���������� 0 hidelaunchbar HideLaunchBar��  ��  �  f  ��� ���� L  ������  ��  ��  ��  ��  �	  ] r  ����� n  ����� 4 �����
�� 
cobj� m  ������ � o  ������ "0 displaycalllist displayCallList� o      ���� 0 selectedcall selectedCall�  �  X ��� l     ��������  ��  ��  � ��� l �F������ O  �F��� k  �E�� ��� l ����������  ��  ��  � ��� l ��������  � - ' Bring Skype to the front if specified.   � ��� N   B r i n g   S k y p e   t o   t h e   f r o n t   i f   s p e c i f i e d .� ��� l ����������  ��  ��  � ��� Z ��������� = ����� o  ������ &0 bringskypetofront BringSkypeToFront� m  ����
�� boovtrue� I ��������
�� .miscactvnull��� ��� null��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � L F Decline the specified call. Display an error if something goes wrong.   � ��� �   D e c l i n e   t h e   s p e c i f i e d   c a l l .   D i s p l a y   a n   e r r o r   i f   s o m e t h i n g   g o e s   w r o n g .� ��� l ����������  ��  ��  � ��� r  ���� I ������
�� .sendskypnull��� ��� null��  � ����
�� 
cmnd� b  ���� b  ���� m  ���� ���  A L T E R   C A L L  � n  ���� 4 ���
�� 
cwor� m  ���� � l ������� c  ���� o  � ���� 0 selectedcall selectedCall� m   ��
�� 
ctxt��  ��  � m  �� ��� 4   E N D   R E D I R E C T _ T O _ V O I C E M A I L� �����
�� 
scrp� o  ���� 0 
scriptname 
ScriptName��  � o      ���� 0 statusresult statusResult� ��� Z =������� = %��� n  !��� 4 !���
�� 
cwor� m   ���� � o  ���� 0 statusresult statusResult� m  !$�� ��� 
 E R R O R� I (9����
�� .sysodlogaskr        TEXT� o  (+���� 0 statusresult statusResult� ����
�� 
btns� J  ,1�� ���� m  ,/�� ���  O K��  � ����
�� 
dflt� m  23���� � �����
�� 
disp� m  45���� ��  ��  ��  � ��� n >C��� I  ?C�������� 0 hidelaunchbar HideLaunchBar��  ��  �  f  >?� ���� l DD��������  ��  ��  ��  � m  �����                                                                                  SKYP  alis    H  Macintosh HD               �hnH+   ܦ	Skype.app                                                       ON�	L�        ����  	                Applications    �h_�      �	�     ܦ  $Macintosh HD:Applications: Skype.app   	 S k y p e . a p p    M a c i n t o s h   H D  Applications/Skype.app  / ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i    	��� I      �������� 0 hidelaunchbar HideLaunchBar��  ��  � k     �� ��� r     	��� l    ������ I    ����
�� .earsffdralis        afdr� m     ��
�� appfegfp� �����
�� 
rtyp� m    ��
�� 
utxt��  ��  ��  � o      ���� 0 appname appName� ���� Z  
 ������� D   
 ��� o   
 ���� 0 appname appName� m    �� ���  L a u n c h B a r . a p p :� I   �����
�� .GURLGURLnull���    obj � m    �� ���   x - l a u n c h b a r : h i d e��  ��  ��  ��  � ���� l     ��������  ��  ��  ��       ����� ��� ����������  � ���������������������������������� &0 bringskypetofront BringSkypeToFront�� 0 
scriptname 
ScriptName�� 0 hidelaunchbar HideLaunchBar
�� .aevtoappnull  �   � ****�� 0 activecalls activeCalls�� "0 activecallslist activeCallsList�� "0 displaycalllist displayCallList�� 0 callid callID�� 0 statusresult statusResult�� 0 	pdnresult 	pdnResult�� 0 pdn  �� 0 selectedcall selectedCall��  ��  ��  ��  
�� boovfals� ����������� 0 hidelaunchbar HideLaunchBar��  ��   ���� 0 appname appName ����������~
�� appfegfp
�� 
rtyp
�� 
utxt
� .earsffdralis        afdr
�~ .GURLGURLnull���    obj �� ���l E�O�� 
�j Y h� �}	�|�{
�z
�} .aevtoappnull  �   � ****	 k    F   W ��y�y  �|  �{  
 �x�x 0 i   ;M�w ,�v�u�t�s�r :�q E�p�o�n�m�l W�k�j�i�h�g�f�e�d � ��c � � � � ��b ��a�`�_�^+A�]�\x�[|�Z�Y�X�W�V�U��T���
�w 
cmnd
�v 
scrp�u 
�t .sendskypnull��� ��� null�s 0 activecalls activeCalls
�r 
cwor
�q 
btns
�p 
dflt
�o 
disp�n 
�m .sysodlogaskr        TEXT�l 0 hidelaunchbar HideLaunchBar
�k 
cha �j 
�i 
TEXT�h "0 activecallslist activeCallsList�g "0 displaycalllist displayCallList
�f 
cobj
�e 
nmbr�d 0 callid callID�c 0 statusresult statusResult�b 0 	pdnresult 	pdnResult
�a 
ascr
�` 
txdl
�_ 
citm�^ 0 pdn  
�] .corecnte****       ****
�\ 
prmp
�[ 
appr
�Z 
empL
�Y 
mlsl�X 
�W .gtqpchltns    @   @ ns  �V 0 selectedcall selectedCall
�U .miscactvnull��� ��� null
�T 
ctxt�zG�s*���b  � E�O��k/�  ���kv�k�k� O)j+ OhY hO�a   )j+ OhY hO�[a \[Za \Zi2a &E�O��-E` OjvE` O k_ a -a ,Ekh  _ a �/E` O*�a _ %a %�b  � E` O_ �k/a   _ �a kv�k�k� O)j+ OhY hO_ �i/a   �*�a _ %a  %�b  � E` !O_ !�k/a "  _ !�a #kv�k�k� O)j+ OhY hOa $_ %a &,FO_ !a 'i/E` (Oa )_ %a &,FO_ a *%_ (%_ 6FOPY hOP[OY�OPUO_ j +j  )j+ OhY S_ j +k ;_ a ,a -a .a /a 0fa 1fa 2 3E` 4O_ 4f  )j+ OhY hY _ a k/E` 4O� cb   e  
*j 5Y hO*�a 6_ 4a 7&�k/%a 8%�b  � E` O_ �k/a 9  _ �a :kv�k�k� Y hO)j+ OPU� �  1 3 1  �S�S   �R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D �  1 3 1�R  �Q  �P  �O  �N  �M  �L  �K  �J  �I  �H  �G  �F  �E  �D   �C�B�C  �B   � 4 C A L L   1 3 1   S T A T U S   I N P R O G R E S S � J C A L L   8 5 0   P A R T N E R _ D I S P N A M E   n i c k w - b r a i n �    n i c k w - b r a i n �   8 5 0     n i c k w - b r a i n��  ��  ��  ��   ascr  ��ޭ