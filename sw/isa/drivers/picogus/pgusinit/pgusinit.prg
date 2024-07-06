`  E�   �   ,    MiNT   '   : N��    E    �   ,       �          F�  �  F�                                                                                                                                                                                �α�    gJ� $f#�  F�O� �N�  "� o #�  F� ( �  .@��   @N�  )vNu  Nu0/ �� 
2/ �� �AH@B@2/ �� 
ЁNu/t"/ jD�D / jD�D// aP�JjD�$Nu/"/  / �   d$ BBHB��0H@4/ 
��0`0$���   d���  ��"��HB��HBJBf
҂e�� cS�$Nu"/  / // a �lP�"/ // a �<P�"/ �� Nu"/  / // a �lP�"/ // a �P�"/ �� Nu  PicoGUSinit v3.0.0 (c) 2024 Ian Scott - licensed under the GNU GPL v2
  Hz��N�  .PX�NuUsage:
   %s [/?] | [/f fw.uf2] | [/m x [d]]  | [/j] %s 

     /?        - show this message
     /f fw.uf2 - program the PicoGUS with the firmware file fw.uf2
     /j        - enable USB joystick support
     /v x      - set volume of the wavetable header. Scale 0-100, Default: 100
                 (for PicoGUS v2.0 boards only)
     /m x      - change card mode to x (gus, sb, mpu, tandy, cms, joy)
     /s        - save settings to the card to persist on system boot
 Sound Blaster/AdLib, MPU-401, Tandy, CMS modes only:
     /p x - set the (hex) base port address of the emulated card. Defaults:
            Sound Blaster: 220; MPU-401: 330; Tandy: 2C0; CMS: 220
     /o x - set the base address of the OPL2/AdLib on the SB. Default: 388
     /w   - wait on OPL2 data write. Can fix speed-sensitive early AdLib games
 MPU-401 mode only:
     /x   - delay SYSEX (for rev.0 Roland MT-32)
     /n   - fake all notes off (for Roland RA-50)
 GUS mode only:
     /a n - set audio buffer to n samples. Default: 4, Min: 1, Max: 256
            (tweaking this can help programs that hang or have audio glitches)
     /d n - force DMA interval to n us. Default: 0, Min: 0, Max: 255
            Specifying 0 restores the GUS default behavior.
            (if games with streaming audio like Doom stutter, increase this)
     /4   - Enable fixed 44.1kHz output for all active voice #s [EXPERIMENTAL]
 The ULTRASND environment variable must be set in the following format:
 	set ULTRASND=xxx,y,n,z,n
 Where xxx = port, y = DMA, z = IRQ. n is ignored.
 Port is set on the card according to ULTRASND; DMA and IRQ configued via jumper. H� 0&o $/ /9  FPHz��E�  %�N�/Hz��/9  FPG�  %�N�O� p��e  ЂЀA�  E�/0 Hz��/9  FPN�O� /9  FPHz�zN�/9  FPHz�qN�/9  FPHz��N�/9  FPHz��N�O� .�  FPHz��N�/9  FPHz�N�/9  FPHz�CN�/9  FPHz�~N�O�   S�r��e  �/9  FPHz��N�/9  FPHz��N�/9  FPHz�N�O� p��f(/9  FPHz�>N�P�/y  FP /|  g L�N�  %�U�f  �/9  FPHz��N�/9  FPHz��N�O� /y  FP /|  � `�J�f  �/9  FPHz��N�/9  FPHz��N�/9  FPHz�-N�/9  FPHz�pN�O� .�  FPHz��N�/9  FPHz��N�/9  FPHz�N�/9  FPHz�YN�O� .�  FPHz��N�/9  FPHz��N�O� /y  FP /|  � ` �&L�NuERROR: no ULTRASND variable set or is malformed!
 /9  FPHz��N�  %�B�// N���O� NuERROR: no PicoGUS detected!
  /9  FPHz��N�  %�P�NuERROR: PicoGUS card using protocol %u, needs %u
 Please run the latest PicoGUS firmware and pgusinit.exe versions together!
  p / / / / Hz�r/9  FPN�  %�O� /y  FP /|  � N�  %�ULTRASND %hx,%hhu,%*hhu,%hhu,%*hhu ERROR: Card not responding to GUS commands on port %x
 GUS-like card detected on port %x...
 NV��/$. Hz�tN�  )X�J�f/N��ZX�p$.��N^NuHn��Hn��Hn��Hz�O/ N�  .|O� W�g/N��(X�p`�Hx Hx� y  F� h N�p 0.��/ Hx� y  F� h N�Hx C0.��@? Bg y  F� h N�B�0.��@? Bg y  F� h N�O�  Hx D0.��@? Bg y  F� h N�B�0.��@? Bg y  F� h N�Hx �0.��@? Bg y  F� h N�0.��@? Bg y  F� h N�O� r 2.�� ��g/Hz�g/9  FPN�  %�O� pb` ��/Hz��N�  -�Hx p 0.��/  y  F� h N�Hx L0.��@? Bg y  F� h N�Hx 0.��@? Bg y  F� h N�O�  p ` �lFirmware version: %s
 O�� /
/Hx �Hx� y  F� h N�Hx Hx� y  F� h N�E� Hx B�/
N�  0�O� t Hx� y  F� h N��( X�g
R��   �f�/
Hz�|N�  -�P�$$_O� Nu/// $< [��Hx� y  F� h N�X�� gS�f�B $&Nup`�Settings saved to flash.  Hx �Hx� y  F� h N�Hx �Hx� y  F� h N�Hz��N�  .PHx dN�  #DO� Nu
Mode change requested. Rebooting to fw: %s...
 ERROR: card is not alive after rebooting to new firmware
 PicoGUS detected:   H�00$/ / Hx �Hx� y  F� h N�Hx �Hx� y  F� h N��   �/Hx� y  F� h N�Hx dE�  #DN�Hz�(N�  .PO�  JgN���ԂԂA�J/0( Hz�G�  -�N�Hx �Hx� y  F� h N�Hx �Hx� y  F� h N�Hx dN�Hx �N��8O�  J f/9  FPHz��N�  %�P�pcL�NuHz�N�N���X�p `�rb ERROR: unable to open firmware file %s
 ERROR: file %s is not a valid UF2 file - too short
 ERROR: file %s is not a valid UF2 file - bad magic
 ERROR: Card is not in programming mode?
 Programming %d blocks 
ERROR: file %s is not a valid UF2 file - block mismatch
 
ERROR: Card is not in firmware writing mode?
 
ERROR: Card has written last firmware byte but is not done
 
Programming complete. Waiting for the card to reboot... ERROR: card is not alive after programming firmware
 O�� H�?<(/,/3Hz�/N�  $ & P�f"/Hz��/9  FPN�  %�O� p
L�<�O� Nut |E� (G�  &�I���/Hx Hx /
N�O� �   g/Hz��/9  FPN�  %�O� p`��
2FU (g/Hz��/9  FPN�  %�O� p`���]QW ,f��
�o0$f�J�f~,/ @Hx �Hx� y  F� h N�Hx �Hx� y  F� h N�Hx dN�  #DB�N��O� J f/9  FPHz��N�  %�P�p` �/9  FTN�  $/Hz��/9  FPN�  %�O� �� <g/Hz��/9  FPN�  %�O� p` ��z *FS�p 2X / Hx� y  F� h N�P���e�  �g&Hx N�X�J f  �/9  FPHz�~N�  %�P�p` �� fFHx �N��ZX�J f/9  FPHz��`�Hx �Hx� y  F� h N�Hx �Hx� y  F� h N�O� /9  FPHx .N�  .R�P���e �:/N�  #�Hz�jN�  .PHx �N���O� J f&/9  FPHz��N�  %�P�pc` ��R��   f �
`�Hz��N�  -�N��*X�p ` ��enabled disabled (use /j to enable) on off , wait on  /? /j /m %7s /4 /a %hu /d /p %hx /o /w /v /x /n /f %255s /s Older fw protocol version 1 detected, upgrading firmware in compatibility mode Hardware: PicoGUS v1.x or PicoGUS Femto Hardware: PicoGUS v2.0 Hardware: Unknown USB joystick support %s
 Wavetable volume set to %u
 Audio buffer size set to %u samples
 DMA interval set to default behavior DMA interval forced to %u us
 Fixed 44.1kHz output enabled (EXPERIMENTAL) Running in GUS mode on port %x
 Running in AdLib/OPL2 mode on port %x
 MPU-401 sysex delay: %s, fake all notes off: %s
 Running in MPU-401 mode on port %x
 Running in Tandy 3-voice mode on port %x
 Running in CMS/Game Blaster mode on port %x
 Running in Sound Blaster 2.0 mode on port %x (AdLib port %x%s)
 Running in Joystick exclusive mode on port 201 Running in unknown mode on port %x (maybe upgrade pgusinit?)
 PicoGUS initialized! NV��H�?<Hy  F�/<_ISAN�  (�P�R�g �Bn��Bn��Bn��Bn��I�� Hx B�/N�  0�B���B���N��RHx �Hx� y  F� h N�B�Hx� y  F� h N�Hx� y  F� h N�O�   ��gN���pcL�<���N^NuHz�jE�  -�N�N���Hx Hx� y  F� h N�Hx� y  F� h N� v  O�   f  �pd@��|B.��B.��B.��B.��B.��B.��G�  .���  F�mnHx Hx� y  F� h N�Hx� y  F� h N� O�   gJ.� g R  f JHz��N�  .PX�J.� g N�   �//N���P�` �B ` �h$ԆԂHz� y  F�/0( N�P� y  F�J�f//N��^P�p ` ��Hz��/0( N�P�J�g �*R�Hz�� y  F�/0( N�P� y  F�J�fL��  F�m//N��P�p F ` ��Hn��Hz��/0(N�  .|O� S�g &/ y  F�/N���P�p` �fHz�/0( N�P�J�g 2Hz�p y  F�/0( N�P� y  F�J�fF��  F�l�Hn��Hz�K/0(N�  .|O� S�f0.��S@@ �c  �/ y  F�/N��lP�p` ��Hz�/0( N�P� y  F�J�fB��  F�l �*Hn��Hz��/0(N�  .|O� S�fn ���cX/ y  F�/N��P�p` ��Hz��/0( N�P� y  F�J�f2��  F�l ��Hn��Hz��/0(N�  .|O� S�f�n���b�,` "Hz�/0( N�P� y  F�J�f2��  F�l ��Hn��Hz�W/0(N�  .|O� S�f �hn���c�` �\Hz�:/0( N�P�J�g  �Hz�+ y  F�/0( K�  .�N�P� y  F�J�f4��  F�l �$Hn��Hz��/0(N�  .|O� S�f �. d��c �P` ��Hz��/0( N�P�J�g~Hz�� y  F�/0( N�P�J�gpHz�� y  F�/0( N�P� y  F�J�f��  F�l ��/Hz��/0(N�  .|` ��Hz��/0( N�P�J�g.R�` ��| ��`�| ��`�| ��`�| ��`�| ��`�| ��`��   �/Hx N��^P�pa` ��J.��g<E�&t(�����G�  /dHx //N�O� J�g TR�p��f�/ y  F�` ��Hx �Hx� y  F� h N�Hx� y  F� h N�t  O� G�  .Pf �Hz�N�p
.�N�  .<X�J�g  �Jn��g0Hx Hx� y  F� h N�p 0.��/ Hx� y  F� h N�O� Hx Hx� y  F� h N�Hx� y  F� h N�> O� [�fbJn��g0Hx Hx� y  F� h N�p 0.��/ Hx� y  F� h N�O� Hx Hx� y  F� h N�Hx� y  F� h N�=@��O� Hx Hx� y  F� h N�.��p/Hx� y  F� h N�O�  <  HJ.��g <  @/ Hz�0N�P�S�f>Hx  Hx� y  F� h N�p .��/ Hx� y  F� h N�p .��/ Hz�	N�O�  b ��   �؄0;HN�  6v��vvvvvvvvvnr��fHz�` �RHz��` �J y  F�/N���X�Jn��f=| ��Hx Hx� y  F� h N�.��S �   �/ Hx� y  F� h N�p 0.��/ Hz�yN�Hx Hx� y  F� h N�O�  p .��/ Hx� y  F� h N�0.��P�f  �Hz�^N�X�Hx Hx� y  F� h N�.��p/Hx� y  F� h N�O� J.��gHz�aN�X�Hx N�  #DHx Hx� y  F� h N�Hx� y  F� h N�? BgHz�SN�O� Hz��N�X�J.��g ��N��N` ��? BgHz��N�P�` �^?BgHz�=N�P�`�"<  gJ.��g"<  d <  gJ.��g <  d// Hz�2N�Hx !Hx� y  F� h N�.��� �.��r/Hx� y  F� h N�?BgHz�%N�O� $` �X?BgHz�7` �|?BgHz�U` �pHx 0Hx� y  F� h N�.��p/Hx� y  F� h N�O�  <  uJ.��g <  k/ ?.��Bg?BgHz�*N�O� ` ��Hz�\N�X�?BgHz�` ��.��p//N���` �0/
/N�  (#�   F�#�   F� <  �/ ?< &NN\�$$_Nu[/a n] [/d n] [/4] [/p x] [/p x] [/v x] [/s] [/n] [/p x] [/o x] [/w] INVALID GUS SB MPU TANDY CMS JOY   "�  "�  "�  "�  "�  "�  "�      /
/ 9  F�R��f
#�     F� 9  F�jD�#�  F�p���  F�#�  F�/ ?< HNA\�й  F�/ N�  1�By  FDB�/9  F4/9  F@N�  "/ N�  #t  H�0 Hx // N�  vP�$ E�  1�N�& N�" ����n�L�Nu/
/J�  F�f / ? ?< LNAX� 9  F�" X�#�  F�"@ QN�S�  F�`�H� 0&o ��  gB��ھ�f: + ? ?< >NAX�p�'@ B� y  F�C�  F̰�  g��f"� /N�  '`X�p L�NuC�  h `�   o p�!@ p Nu  H�80(/ $o ��  gJ�fp(#�  F��� L�NuHx Hx N�  1�&@P�J�g�  rg  �  wg  �  af  � + h p2  bg  � xg  � +f +�� R�r��f�+   g  �  gv�@ �R@? /?< =NAP�& kbp x??/ ?< BNAO� 
&��ھ�'C p�'@ 'y  F� #�  F�` �: + H ` �n +�� ` �d +  ` �| +  ` �rB@`�+  g:B@? /?< <NAP�& jD�#�  F�/N�  '`X�` ��J+ m �|??< >NAX�+  g + �@ �R@? /?< =NAP�& j �L`�B@`�  NV  Hn /. /. N�  0hO� N^Nu  
  H�8>$o $(o (/
K�  .�N�X�$ p��f@G�  . 
g/H�0@/N�P�J�mpL�|Nu,  f�/Hx N�P�J�l�p�`�,  g//Hx /
N�  (`O� ��f� `�Hx 
/
M�  .�N�P�&@(<  (`��  f&��  g�/
N�&@.�/ Hx /
N�  (`O� ��g�`���g
cN+ ��gFB/
N�& .�/ Hx /
 DN�O� ��g� 
` �b/Hx Hx Hz�� DN�O� U�f�$K� 
Hx 
Hk N�P�&@` �p  H�<0(/  &o (// $/N�  *P�&  + */ //? ?< ?NAO� J�l + @ D�#�  F�p L�<Nu��c +�� // N�  vP�`�  H� 0 o ��  g  ���
���f  �C���!|��
���$y  F(��  F$f  �!J��&j !K��'I &h��'I  (��"	Ҁ��f���
�fЪ !@��!j ��$j %I $h����  F$g,���
�f$ * "
Ҁ��fШ��%@ %h��  h��!J "J&i ��  F$g.��M
�f& + �� f k !i  "i #H /?< INA\�L�Nu��c �B$j ` �0H�<0&/  &o ((+ // $/N�  *P�*/ // ??< @NAO� J�l + @ D�#�  F�p L�<Nu// N�  vP�`�  H�00&o 0<hv�/? ?< NMP� @��  gB�J�g" / ��f��  fp L�Nu&� `�P�J�f�p�`�  H�08&/ $y  F���  g8/N�  .�X�$ &JI�  /$[��  g///
N�O� J�f�2 =( f�E�( 
L�Nuunknown application   H�<>3�   FD(y  F�*l ��  X�r�*A#�  F�"l ,6| A� fr,HB�X�"�   �, � H�2BJBo � ��H�4@��E� K� #�  F4tԊ%|  )t G� *AR���  o �   g �  	g �  'f �p `   Af &) R f ) G f ) V f ) = f  �B�BM� ) N f  �) U f  �) L f  �) L f  �) : 	f  �E� 
Jf�#�  F4$P�+N P�Jf� y  F4*P��  g:Jg6#�  FLHx \/&<  /� CN�P�J�fHx // CN�P�J�g*@R�#�  FHp#�  F@X�Jf X*BB���  f z , Ь Ь �  $ ԋp�Ā",  ������ ��J�n �p�? ?< LNAX���` �D *�X�,I$Irf2"JJ�g&"9  F�X���d$m�� JJf�( =��ffB *@` � =f�r `��`�$H` �:S�` �NR�   g  	f4S�$M*J��  g   g  	gB(����  f�BB( ��` ��S�`�@��g�S�`�$M(	S� 'f.J�gFS�E� "R�- ' f� ' A*J"D��  n�`�Bp `�"R�  fJ�g�  `�B`��`�"p`� B �$R�  F@Jf�` ����  F@l ��Ѐ y  F4 p B$MJg ��*J"R�g  ,f�B*AT��� �� 	b �\H�A� � ЈJg�Ѐ����`�(9  F�&R�z��e  �փ0{8( �& �N�� � 
 � � �#�     F�p���  F�#�  F�&@������ Ћ��l �/ N�  1�B@//? ?< JNAO� #�  F�(9  F�&y  F4&9  F@X�Jy  FDgp? ?<NAX� SJf"Hx N�  A�X�J�gp8|��?? ?< FNA\�///N�  "/ N�  #t#�  F�` �R��#�  F�` �Fp���o �>D�#�  F�` �2  'f �` �Bunknown application NV  Hn /. N�  0�P�N^NuNV��n ��/. Hx Hx Hn��N�  (`O� J�mp .��N^Nu  /9  FT// N�  .P�Nu/9  FT// N�  %�P�J�mHx 
N�  .<Ѐ��X�Nup�`�NV  Hn /. /. N�  0�O� N^Nu   o  �/ gJf�p Nu  H�0 t E�  /� o p 0( / N�&  o p 0( .�N�X�"����fR�J�f�L�Nu `� /  @Jf��� S�Nu  /
"o ��$o 2� $o 2� S���  m.J g R�� g�J gJg �   ��   ���$_Nup Jg�p�`�p `�p`�  H�0 t E�  /യ fp `4 o 0( H�0@/N�&  o 0( H�0@.�N�X�"  ����fR�J�f�L�Nu/$/ /N�  .�X� B���/ gS���d�� $Nu   / A�  2 r F0  gr�ЁNu  H�0 $/ $o *  f,p
��f8r��  F�g/
Hx N�  ." P�R�g"v
#�  F�/J /B L�N�  .#�  F�`�r
#�  F�L�Nu// // // Hz��N�  3(O� Nu// // /9  FTN�  0hO� Nu  / o ""AH�0H�JBgR� �$Nup�`�NV��-n ��B���/. /. Hn��B�Hz��N�  8�O� N^Nu o / "/ g  �/��4  g S� �H4 HB4 p ��g8H�6 &(*,.$B&B*B,BH�6H�6H�6H�6H�6H�0S�f�L�l�? �Hg2 DAA S@�H�AN�!!!!Q���0  g1   g$ Nu"_ W.H��   DN�  //// // N�  *P�& / N�  A�$ X�g// N�  D�P� $&Nu 8�Nu/
/ <  1�/ ?< &NN\�$$_Nu������������������������� �����������Ą������������������������������Ȉ����������������������� 0123456789abcdef 0123456789ABCDEF (nil) O��pH�?>(o �(/ �&o �$o �v f L�|�O� �Nu  %f  �A� BB� 4| z &H  +g 
n  �   g   #g   *f  �$jD�|G�  .f 6+   *f  �*ZT� lf+ l g R�r  ,A  Sg "rQ��g �rX��g � �� Eg A���r��e  �     H�<A  xn �p�Ўr��e �Ѐ0;N� r ����� ������bX����b��b/�   �/ N�րP�` \  -g4  0g t "K �� 	b �"҂ҁԁ B��H�A� �$&I`�|R�` ��R� ��  	b"/N�  Ep*@X� K ��&HR�  	c�` ��:|��` ��T�` ��px��m  �rW��m �p%��f  �/Hx %` �X"j  �D�0| K� </M 4Hx 
//A 8/H 4N�  �P�  0�"/ 0,AHx 
/N�  vP�"  o ,p	��e�J�f 0g��  gf� -*o 4T�M� < ����J�f4��  g 0fS�/Hx -N�րP�.�   �J�n0"S� jp $��S���c*J�gJ�n4R�` �|��` �HJg��`�//N�րS�P�`�/p / N�րS�P�`�/Hx  N�րS�P�`�"y  F�A� <**H�Jf�#�  F�P��Ŕ�J�f.J�n."S� jp $����c,J�g �|J�o �v/Hx  N�րS�P�`�/Hx  N�րS�P�`�/p / N�րS�P�`�r/A 4<| x"po��g  �px��g  �pX��g  �~
A��XK� </M 8///A 8/H 4N�  �P� o ,� "/ 0///H 4/A 8N�  vP�"  o ,"o 0��c�J� 4g ro��g r���rX��f� x*o 8T�� 0M� < ����J�f.�   �J�nF"S� jp $��S���c@J�g �vJ�o �p/Hx  N�րS�P�`�~` �>~` �8~A���` �2//N�րS�P�`�/p / N�րS�P�`�*Z��  gS�J�f.�   �J�n4"S� jp $��//N�րP�J�g ��J�o ��/Hx  N�րS�P�`�//N�րS�P�`�,Z��  fM��"/N�  .�X���J�f.�   �J�n<"S� jp $��z 6X g
r���g.��m*J�g ��J�o �z/Hx  N�րS�P�`�//N�րS�P�`�/�   �/ N�րR�P�`�~+` �$~ ` �r/A 4` �z0` �)taolf(             O���H�?>&oP,/X$o\x BBv B� <g ��g fJ�g
Jf ` ,z  A�  2 0 X g<Jgp 0  g(/N�"  R�X� ��g �p F ��C�  2 1  f�R�`�  %g(Jf /N� R�X���g ��V�H�H�D�B`�`�I� *   %f*Jf"/N� R�X���g T�* V�H�H�D�$L`�`�J g @  *f >I� ~/G @ ��  	b .//A 4N�  Ep* X� L"/ 0 ��(HR�  	c�$L  hg   lg  �  Lg *$L��B� HB� DJ�fz�R // A /g �/ / ��  c �/ X /g x/ g /n 
/ d /n t/ c /g �/ d /g �/ [ /f ��J� @f � o`(X/H`B/ L* ^ g �R�z  ]f �R�| ] Lp Jg ]f �E� Jg A�L��B(� Jf
/N� R�X�~LޏK�  .�` �B� @` ��z ` ��, l f@E� ��B� H~/G D` �, h f.E� ��B� D~/G H` ��B� HB� D8| ` �֙�B� H~`�B� D~`�/ /��8G b ��0�   �0| .��  ��0J�f>  
g �  f ��J� @f �� o`"X JgS�"�R� </H`x ` ��| x /p�   �A��0 H�8BA��0 H�<@Jf
/N� R�X�K�  2 `��<| 
`�/N� R�X�p 5  f� -f Z| - L/N� R�X�p���gS�g ���  f �:| r ��~��e � < . g>J�f: 0f4��  g  //A 4/H 8N� R�"/ 4R�X� o 4���g  ���f�`  ���  f0p��g~��f^~��f&`p��f �      xf \<| `�~��f z ��  	c �� ��  b  �A�L��B� R�0| ` �f~
��f� ��  	cڰ�  g �A�L��B-� J� @f,"o`X�`*YpLЏ/ p /f:/B�/ N�  CX*�O� R� <��V��` ��<| ` ��B/ L��` ��<| `�J� DfJ� Hf��  f�/B�/ N�  C`�r�� Hf$��  g/B�/ N�  CX�`�/B�/ N�  C`��  g/B�/ N�  CX:�` �r/B�/ N�  C`�Jf^/N� R�X���g �J� @fJ o`./H`p���fzJ�g G�.J�oS�g/N� R�X� ��f�J� @f �R� <x ` �
`�~ `�J� @fZ o`*X/H`JfP/N� R�X���g lI�  2 ��  g�J�oS�g/N� R�X� ��f ���  g ��BR� <` ����`�`�Jf
/N� R�X�*CM�  2 `
/N� R�X�p 6  f�B/ LM� Lr �ȓ�~ &֍J�f  � .g nN +gT -gNJ�f  ���  g  �J� @f �$"o`X�` Y��  g  �(z�R*z�R,z�R �!M !N ` �� ��  	b�R��//A 4/H 8/I <N� &֍X�"/ 0 o 4"o 8�  �g���f �^` �zJ�gR +g -f6    �  eg�A�L��(�   +g  -g      ef �@x` �l ��  	c �t`�    eg$ ��  	c .f ���  f �0| ` �Dr` �>2| ` �6J� Dg
B�B� ` �B�` ���` �*T�z` �4�  �n �<A�L��G� R�` �,p ` �&H�<@//N�P�J�gJ�gJ� @fBx ` ��J�g��  g�/N� R�X���f�J� @f ��B` �~$Hx` �Z$L` �$L` �NJgJ�Tg/H�0A/"o\N�P���fJ� <fr�/A < / <L�|�O� Nu~��f.` ��r F��4  g �P` �nJf�`°�  g ��p��f �� ��  c ��<| ` �� 











              H�> */ p v??/ ?< BNAO� 
( BFp??/ ?< BNAO� 
& ??/?< BNAO� 
J�W�H�H�D�L�|Nu / #�  F�#�  F�NuH�0> /  V�r�&AI�  y  F(��  F$g:�� b.��M
�g& ( G�  ��d  ΐ�!@ ��!L  ��
�pЈ`L h `�A� $ 9  F���e��  F�d
" Ҁ#�  F� @A��&C� /?< HNA\�"@J�fp'#�  F�p L�|Nu*y  F(��  F$fJr#A 4|����"��M
�#J A� #H ,m #N -I ,i -I #J  #|��
� #M +H ` �2��c�*m `�"h #h  $h %I ` �,  NV��Hn��/. /. /. N�  C�O� J�l <���J���g <�   N^NuJ���g�D�`�  NV��Hn��/. /. /. N�  C�O� J���gD�N^Nu  H�> */ "o  (/ $$E Jg   g�  	g�  -W�H�H�$o (D�$�  -fR�g  �  0fJ R�( �� Bg Xg"J�g  � @v`p�Ȁf  �T�vx,Bp `jr�ȁf  �T�vx`�BCJ�f�x
`��� 	bdH�0AA��и�oFJf2J�g&"B�`  �g  Ѐe    g ��րd ��U� Јd  P�v$FR�Jf�JCg4��  g"�Jf6L�|Nu��H�0AA���r	��m�0| %`� @vx` �N��  fp `�"�`�p�`�   o "/ g  �B /��4  g S� �H4 HB4 p ��g8H�6 &(*,.$B&B*B,BH�6H�6H�6H�6H�6H�0S�f�L�l�? �Hg2 DAA S@�H�AN�!!!!Q���0  g1   g$ Nu  // / &< � "@R��� b�   �f�r ` +f"@`� -f�"@rp ` @����Ј @��H�A� � �� 	c�J�gD�$&Nu  "H  "[  "b  "[  "[  "z  u  u  u  u  u  u  u  u  u  u��
�  F$  F$      F8  )`            -�  -�  F\  Fp  F��ھ�   ����    @   �ھ�   ����    @   �ھ�    ����    �        8�  �        �

X|
D
4
�
�0" "<$$D
�""
 *2
"(
"


 �**>,44
&*
 
 
(
2


2
|$$l""&"P >Lz


4D�R\"R"�.4P8`(dNF
�$r�R2$6&


".�R(8
P��r�� (�8�dL�TF
$�DzD 