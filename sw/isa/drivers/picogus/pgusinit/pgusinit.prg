`  Q|   �   (    MiNT   '   : N��    P�   �   (       �          R8  �  R(                                                                                                                                                                                �α�    gJ� $f#�  R8O� �N�  -� o #�  R8 ( �  .@��   @N�  4:Nu  Nu0/ �� 
2/ �� �AH@B@2/ �� 
ЁNu/t"/ jD�D / jD�D// aP�JjD�$Nu/"/  / �   d$ BBHB��0H@4/ 
��0`0$���   d���  ��"��HB��HBJBf
҂e�� cS�$Nu"/  / // a �lP�"/ // a �<P�"/ �� Nu"/  / // a �lP�"/ // a �P�"/ �� Nu  PicoGUSinit v3.0.0 (c) 2024 Ian Scott - licensed under the GNU GPL v2
  Hz��N�  9X�NuUsage:    /?            - show this message (/?? to show options for all modes)    /flash fw.uf2 - program the PicoGUS with the firmware file fw.uf2    /wtvol x      - set volume of wavetable header. Scale 0-100, Default: 100                    (for PicoGUS v2.0 boards only)    /mode x       - change card mode to x (gus, sb, mpu, tandy, cms, adlib, usb)    /defaults     - set all settings for all modes to defaults    /save         - save settings to the card to persist on system boot    /joy 1|0      - enable/disable USB joystick support, Default: 0 GUS settings:    /gusport x  - set the base port of the GUS. Default: 240    /gusbuf n   - set audio buffer to n samples. Default: 4, Min: 1, Max: 256                  (tweaking can help programs that hang or have audio glitches)    /gusdma n   - force DMA interval to n us. Default: 0, Min: 0, Max: 255                  Specifying 0 restores the GUS default behavior.                  (increase to fix games with streaming audio like Doom)    /gus44k 1|0 - Fixed 44.1kHz output for all active voice #s [EXPERIMENTAL] Sound Blaster settings:    /sbport x    - set the base port of the Sound Blaster. Default: 220 AdLib settings:    /oplport x   - set the base port of the OPL2/AdLib on the SB. Default: 388    /oplwait 1|0 - wait on OPL2 write. Can fix speed-sensitive early AdLib games MPU-401 settings:    /mpuport x    - set the base port of the MPU-401. Default: 330    /mpudelay 1|0 - delay SYSEX (for rev.0 Roland MT-32)    /mpufake 1|0  - fake all notes off (for Roland RA-50) Tandy settings:    /tandyport x - set the base port of the Tandy 3-voice. Default: 2C0 CMS settings:    /cmsport x - set the base port of the CMS. Default: 220 Serial Mouse settings:    /mousecom n - mouse COM port. Default: 0, Choices: 0 (disable), 1, 2, 3, 4    /mouseproto n - set mouse protocol. Default: 0 (Microsoft)           0 - Microsoft Mouse 2-button,      1 - Logitech 3-button           2 - IntelliMouse 3-button + wheel, 3 - Mouse Systems 3-button    /mouserate n  - set report rate in Hz. Default: 60, Min: 20, Max: 200           (increase for smoother cursor movement, decrease for lower CPU load)    /mousesen n   - set mouse sensitivity (256 - 100%, 128 - 50%, 512 - 200%)
 H�00$/ / Hz�:E�  9N�Hz�5N�Hz�xN�Hz��N�Hz��N�Hz�*N�Hz�tN�Hz��N�O� .�  gN�Hx 
G�  9N�P�p��gJg<Hz�N�Hz�N�Hz�JN�Hz��N�Hz��N�Hz�N�Hz�YN�Hz��N�O�  Hx 
N�X�p��g  �Jf  �p��f  �Hz�N�Hz�)N�Hz�qN�Hx 
N�O� p��gJg  �Hz��N�Hz��N�Hz��N�Hz�N�Hx 
N�O� p��f  �Hz�@N�Hz�JN�Hx 
N�O� p��gJg  �Hz�uN�Hz�}N�Hx 
N�O� p��epKF  fJg|Hz��N�Hz��N�Hz��N�Hz�'N�Hz�dN�Hz��N�Hz��N�O� /|  
� L�N�  8�Hz��N�Hz��N�P�p��g �` �Jf �` �Jf �N` �`p��epKF  f�L�Nup��f �D` �*ERROR: no ULTRASND variable set or is malformed!
 /9  Q�Hz��N�  0�B�Hx // N���O� NuERROR: no BLASTER variable set or is malformed!
  /9  Q�Hz��N�  0�B�Hx // N��zO� NuERROR: no PicoGUS detected!
  /9  Q�Hz��N�  0�P�NuERROR: PicoGUS card using protocol %u, needs %u
 Please run the latest PicoGUS firmware and pgusinit.exe versions together!
  p / / / / Hz�r/9  Q�N�  0�O� /y  Q� /|  ' N�  0�ULTRASND %hx,%*hhu,%*hhu,%*hhu,%*hhu ERROR: Card not responding to GUS commands on port %x
 GUS-like card detected on port %x...
 NV��/$. Hz�rN�  3�X�J�f/N���X�p$.��N^NuHn��Hz�U/ N�  9DO� S�g/N���X�p`�Hx Hx� y  R$ h N�Hx� y  R$ h N�2.��O� �Af�Hx CA?Bg y  R$ h N�B�0.��@? Bg y  R$ h N�Hx D0.��@? Bg y  R$ h N�B�0.��@? Bg y  R$ h N�O�  Hx �0.��@? Bg y  R$ h N�0.��@? Bg y  R$ h N�O� r 2.�� ��g/Hz�o/9  Q�N�  0�O� pb` ��/Hz��N�  8�Hx p 0.��/  y  R$ h N�Hx L0.��@? Bg y  R$ h N�Hx 0.��@? Bg y  R$ h N�O�  p ` �tBLASTER A%hx I%*hhu D%*hhu T3 NV��/$. Hz��N�  3�X�J�f/N���X�p$.��N^NuHn��Hz��/ N�  9DO� S�g/N��ZX�p`�Hx Hx� y  R$ h N�Hx� y  R$ h N�O� �n��f�`�Firmware version: %s
 O�� /
/Hx �Hx� y  R$ h N�Hx Hx� y  R$ h N�E� Hx B�/
N�  ;XO� t Hx� y  R$ h N��( X�g
R��   �f�/
Hz�|N�  8�P�$$_O� Nu/// $< [��Hx� y  R$ h N�X�� gS�f�B $&Nup`�Settings saved to flash.  Hx �Hx� y  R$ h N�Hx �Hx� y  R$ h N�Hz��N�  9Hx dN�  .XO� Nu
Mode change requested. Rebooting to fw: %s...
 ERROR: card is not alive after rebooting to new firmware
 PicoGUS detected:   H�00$/ / Hx �Hx� y  R$ h N�Hx Hx� y  R$ h N��   �/Hx� y  R$ h N�Hx dE�  .XN�Hz�(N�  9O�  JgN���ԂԂA�*/0( Hz�G�  8�N�Hx �Hx� y  R$ h N�Hx �Hx� y  R$ h N�Hx dN�Hx �N��8O�  J f/9  Q�Hz��N�  0�P�pcL�NuHz�N�N���X�p `�rb ERROR: unable to open firmware file %s
 Older fw protocol version %d detected, upgrading firmware in compatibility mode
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
  O�� H�?<*/,Hz��/N�  /8& P�f"/Hz��/9  Q�N�  0�O� p
L�<�O� NuHx Hx� y  R$ h N�Hx� y  R$ h N� O�   bp / Hz�{N�  8�P�t ~E� (I�  1G��:/Hx Hx /
N�O� �   g/Hz��/9  Q�N�  0�O� p` �n�
2FU (g/Hz��/9  Q�N�  0�O� p` �H��]QW ,f��
�o0$f�J�f~./ @Hx �Hx� y  R$ h N�Hx �Hx� y  R$ h N�Hx dN�  .XB�N���O� J f/9  Q�Hz�XN�  0�P�p` ��/9  Q�N�  /$/Hz�a/9  Q�N�  0�O� �� <g/Hz�[/9  Q�N�  0�O� p` ��| *GS�p 2h / Hx� y  R$ h N�P���e�  �g&Hx N�X�J f  �/9  Q�Hz�;N�  0�P�p` �> cDHx �N�X�J f/9  Q�Hz�@`�Hx �Hx� y  R$ h N�Hx �Hx� y  R$ h N�O� /9  Q�Hx .N�  8�R�P���e �8/N�  .�Hz�)N�  9Hx �N��VO� J f&/9  Q�Hz�BN�  0�P�pc` ��R��   f �`�Hz�N�  8�N���X�p ` �|enabled disabled , wait on  on off /flash %255s /? /?? /joy %1[01] /mode %7s /wtvol %hhu /save /defaults /gus44k /gusbuf /gusdma /gusport %hx /sbport /oplport /oplwait /mpuport /mpudelay /mpufake /tandyport /cmsport /mousecom /mousesen %hi /mouseproto /mouserate Unknown option: %s
 Hardware: PicoGUS v1.x or PicoGUS Femto Hardware: PicoGUS v2.0 Hardware: Unknown USB joystick support %s
 Wavetable volume set to %u
 GUS mode:  Audio buffer: %u samples;  DMA interval: default;  DMA interval: %u us;  Sample rate: fixed 44.1k Sample rate: variable Running in GUS mode on port %x
 Running in AdLib/OPL2 mode on port %x MPU-401 sysex delay: %s;  fake all notes off: %s
 Running in MPU-401 mode on port %x
 Running in Tandy 3-voice mode on port %x
 Running in CMS/Game Blaster mode on port %x
 Running in Sound Blaster 2.0 mode on port %x  (AdLib port %x %s)
 Running in unknown mode (maybe upgrade pgusinit?) Serial Mouse  disabled (enable with /mousecom n option) enabled on COM1 enabled on COM2 enabled on COM3 enabled on COM4 enabled on IO port %x
 Mouse report rate: %d Hz,  protocol: %s
 Mouse sensitivity: %d (%d.%02d)
 PicoGUS initialized!  NV��H�?<Hy  R$/<_ISAN�  3�P�R�g $(���� Hx B�/N�  ;XB���B���N��Hx �Hx� y  R$ h N�B�Hx� y  R$ h N�Hx� y  R$ h N�O�   ��gN���pcL�<���N^NuHz��E�  8�N�N��rX�tG�  9d��  R mFHx Hx� y  R$ h N�Hx� y  R$ h N�O�   g  ��   �/ Hx N�� P�pa`�&ւփHz�� y  R/08 N�R�P�J�f� y  R��  R mB�B�/N��O� p F ` �N/Hz�n/08N�  9DO� S�gB�B� y  R/N��RO� p` �/N��VX�` �Hx Hx� y  R$ h N�Hx� y  R$ h N� x  O� tBG�  9d.�����I�  9DK�����  R mFJ.��g �E�nt&�����G�  :Hx //N�O� J�g �R�p��f�B�/ y  R` �&ւփHz�� y  R/08 N�P� y  RJ�fB�//N��xO� p ` �BHz�m/08 N�P� y  RJ�fHx `�Hz�U/08 N�P� y  RJ�f`R���  R mB�/` ��/Hz�0 ЂЀ/0 N�O� S�gB�/` ��. 1��W�D @��Hx Hx� y  R$ h N�p .��` �Hz��/08 N�P� y  RJ�f*R���  R l�/Hz�� ЂЀ/0 N�O� S�f�R�` ��Hz��/08 N�P� y  RJ�fVR���  R l �JHn��Hz�� ЂЀ/0 N�  9DO� S�f. d��cB�/ y  R/N��BO� p` �Hx  ` �<Hz�U/08 N�P�J�g �Hz�I y  R/08 N�P�J�f*Hx �Hx� y  R$ h N�Hx �Hx� y  R$ h ` �Hz� y  R/08 N�P� y  RJ�f>R���  R l ��Hn��Hz��/08N�  9DO� S�f ��. 1��W�D @��Hx ` ��Hz��/08 N�P� y  RJ�flR���  R l �2Hn��Hz�~/08N�  9DO� S�fJ.��fB�/ y  R/N��2O� p` ��Hx Hx� y  R$ h N�.��S �   �/ ` �Hz�G/08 N�P� y  RJ�f0R���  R l ��Hn��Hz��/08N�  9DO� S�f �tHx ` ��Hz�	/08 N�P� y  RJ�ffR���  R l �jHn��Hz��/08N�  9DO� S�f �.n���b �$Hx Hx� y  R$ h N�p 0.��/ Hx� y  R$ h N�O� ` ��Hz��/08 N�P� y  RJ�f8R���  R l ��Hn��Hz�p/08N�  9DO� S�f ��n���b ��Hx `�Hz�T/08 N�P� y  RJ�f:R���  R l ��Hn��Hz�"/08N�  9DO� S�f �dn���b �ZHx ` �4Hz�/08 N�P� y  RJ�f>R���  R l �PHn��Hz��/08N�  9DO� S�f �V. 1��W�D @��Hx 0` �ZHz��/08 N�P� y  RJ�f:R���  R l ��Hn��Hz�~/08N�  9DO� S�f ��n���b ��Hx ` ��Hz�{/08 N�P� y  RJ�f>R���  R l ��Hn��Hz��/08N�  9DO� S�f ��. 1��W�D @��Hx !` ��Hz�1/08 N�P� y  RJ�f>R���  R l �XHn��Hz�/08N�  9DO� S�f �^. 1��W�D @��Hx "` �bHz��/08 N�P� y  RJ�f:R���  R l �Hn��Hz�/08N�  9DO� S�f ��n���b ��Hx ` ��Hz��/08 N�P� y  RJ�f:R���  R l ��Hn��Hz�6/08N�  9DO� S�f �xn���b �nHx 	` �HHz�Z/08 N�P� y  RJ�f`R���  R l �dHn��Hz�/08N�  9DO� S�f �(.�� b �0<� g0<� g0<� gB@=@��Hx @` ��Hz��/08 N�P� y  RJ�f0R���  R l ��Hn��Hz��/08N�  9DO� S�f ��Hx C` ��Hz�/08 N�P� y  RJ�f:R���  R l ��Hn��Hz��/08N�  9DO� S�f �l. ��b �bHx A` ��Hz�r/08 N�P� y  RJ�f@R���  R l �XHn��Hz�/08N�  9DO� S�f �.�� �� ��b �Hx B` �`/08 Hz�#N�B�/ y  R/N��:O� ` ��z` ��Hx �Hx� y  R$ h N�Hx� y  R$ h N�t  O� G�  9f  �Hz��N�r
.�N�  9Hx Hx� y  R$ h N�Hx� y  R$ h N�@��O� "<  J g"<  /Hz��N�P�S�f6Hx  Hx� y  R$ h N�Hx� y  R$ h N��   �/ Hz��N�O� S b ,�   �ҁ0;N�  "R&�"Tr��fHz�G` �@Hz�V` �8 y  R/N��X�J�gp` ��Hz�}N�Hx Hx� y  R$ h N�Hx� y  R$ h N�@ �R@=@��" �  �/Hz�JN�Hx Hx� y  R$ h N�O�  Hx� y  R$ h N�@��X�f  �Hz�-N�X�Hx Hx� y  R$ h N�Hx� y  R$ h N�@��O� gfHz�%N�p.�Hx� y  R$ h N�Hx� y  R$ h N�=@��? BgHz�"N�O� Hz�XN�X�Jg ��N��D` ���   �/ Hz�N�P�` �nHz��`�Hx Hx� y  R$ h N�Hx� y  R$ h N�=@��? BgHz��N�Hx 0Hx� y  R$ h N�Hx� y  R$ h N�@��O�  "<  !J g"<  /N�X�Hx @Hx� y  R$ h N�Hx� y  R$ h N�=@��Hz�N�0.��O� @�g "b (J@g 8@�g  ? BgHz��N�P�` (Hx !Hx� y  R$ h N�Hx� y  R$ h N�@��O� "<  %J g"<  "/Hz�N�Hx "Hx� y  R$ h N�Hx� y  R$ h N�@��O� "<  %J g"<  "/Hz��N�Hx Hx� y  R$ h N�Hx� y  R$ h N�=@��? BgHz��N�O� ` �<Hx Hx� y  R$ h N�Hx� y  R$ h N�=@��? BgHz��N�O� ` ��Hx 	Hx� y  R$ h N�Hx� y  R$ h N�=@��? BgHz�`� y  R/N��X�J�f ��Hx Hx� y  R$ h N�Hx� y  R$ h N�=@��? BgHz�N�Hx Hx� y  R$ h N�Hx� y  R$ h N�=@��O�  ? BgHz�N�Hx 0Hx� y  R$ h N�Hx� y  R$ h N�@��O� "<  !J g"<  /Hz�\N�P�` �
Hz�UN�X� f ��` ��@�g  �@�f ��Hz�`Hz�kN�X�Jn��g ��Hx BHx� y  R$ h N�Hx� y  R$ h N�@���   �/ Hz�N�Hx AHx� y  R$ h N�Hx� y  R$ h N�@��O�  �   �ЀЀA�  Q|/0 Hz��N�Hx CHx� y  R$ h N�Hx� y  R$ h N�=@��2 A ��� d��/2 �It Fā/? BgHz�CN�O� $` � Hz��` �Hz��` �Hz��` �p��/ /N���P�` ��/
/N�  (#�   R #�   R <  �/ ?< &NN\�$$_NuMicrosoft Logitech IntelliMouse Mouse Systems INVALID GUS ADLIB MPU TANDY CMS SB USB    -�  -�  -�  -�  -�  -�  -�  -�  /
/ 9  RR��f
#�     R 9  RjD�#�  Rp���  R#�  R/ ?< HNA\�й  R/ N�  < By  Q�B�/9  Q�/9  Q�N�  -</ N�  .�  H�0 Hx // N�  vP�$ E�  <JN�& N�" ����n�L�Nu/
/J�  R(f / ? ?< LNAX� 9  R," X�#�  R,"@ QN�S�  R(`�H� 0&o ��  gB��ھ�f: + ? ?< >NAX�p�'@ B� y  R@C�  R@��  g��f"� /N�  1�X�p L�NuC�  h `�   o p�!@ !@ p Nu  H�80(/ $o ��  gJ�fp(#�  R4�� L�NuHx Hx N�  <&@P�J�g�  rg  �  wg  �  af  � + h p2  bg  � xg  � +f +�� R�r��f�+   g  �  gz�@ �R@? /?< =NAP�& kfp x??/ ?< BNAO� 
&��ھ�'C p�'@ '@ 'y  R@ #�  R@` �6 + H ` �j +�� ` �` +  ` �x +  ` �nB@`�+  g:B@? /?< <NAP�& jD�#�  R4/N�  1�X�` ��J+ m �x??< >NAX�+  g + �@ �R@? /?< =NAP�& j �H`�B@`�  NV  Hn /. /. N�  :�O� N^Nu  //&/ /N�  9�X�$ // / Hx /N�  2�O� ��gt� $&NuH�<0(/  &o (// $/N�  *P�&  + */ //? ?< ?NAO� J�l + @ D�#�  R4p L�<Nu��c +�� // N�  vP�`�  H� 0 o ��  g  ���
���f  �C���!|��
���$y  Q���  Q�f  �!J��&j !K��'I &h��'I  (��"	Ҁ��f���
�fЪ !@��!j ��$j %I $h����  Q�g,���
�f$ * "
Ҁ��fШ��%@ %h��  h��!J "J&i ��  Q�g.��M
�f& + �� f k !i  "i #H /?< INA\�L�Nu��c �B$j ` �0O�� H�?>(o 0,/ 4&o <.+ // 8/N�  *P�( +  g  �// ??< @NAO� & J�m  �//N�  vP�`  �t�� g@C� ,��| � R�`0ր�Ř�J�g� D�    c Mz p 4X  
fJ�g�4 X�f�C� ,��A� H�2A'I R�R���d��f�// ??< @NAO� J�l�&  + @ D�#�  R4p L�|�O�  Nuv :|  M� ,` �|  H�00&o 0<hv�/? ?< NMP� @��  gB�J�g" / ��f��  fp L�Nu&� `�P�J�f�p�`�  H�08&/ $y  R0��  g8/N�  9�X�$ &JI�  9�$[��  g///
N�O� J�f�2 =( f�E�( 
L�Nuunknown application   H�<>3�   Q�(y  R8*l ��  X�r�*A#�  R0"l ,6| A� fr,HB�X�"�   �, � H�2BJBo � ��H�4@��E� K� #�  Q�tԊ%|  48 G� *AR���  o �   g �  	g �  'f �p `   Af &) R f ) G f ) V f ) = f  �B�BM� ) N f  �) U f  �) L f  �) L f  �) : 	f  �E� 
Jf�#�  Q�$P�+N P�Jf� y  Q�*P��  g:Jg6#�  Q�Hx \/&<  :d CN�P�J�fHx // CN�P�J�g*@R�#�  Q�p#�  Q�X�Jf X*BB���  f z , Ь Ь �  $ ԋp�Ā",  ������ ��J�n �p�? ?< LNAX���` �D *�X�,I$Irf2"JJ�g&"9  R0X���d$m�� JJf�( =��ffB *@` � =f�r `��`�$H` �:S�` �NR�   g  	f4S�$M*J��  g   g  	gB(����  f�BB( ��` ��S�`�@��g�S�`�$M(	S� 'f.J�gFS�E� "R�- ' f� ' A*J"D��  n�`�Bp `�"R�  fJ�g�  `�B`��`�"p`� B �$R�  Q�Jf�` ����  Q�l ��Ѐ y  Q� p B$MJg ��*J"R�g  ,f�B*AT��� �� 	b �\H�A� � ЈJg�Ѐ����`�(9  R&R�z��e  �փ0{8( �& �N�� � 
 � � �#�     Rp���  R#�  R&@������ Ћ��l �#�  R< Ћ�   @.@//Bg?< JNAO� (9  R0&y  Q�&9  Q�Jy  Q�gp? ?<NAX� SJf"Hx N�  MX�J�gp8|��?? ?< FNA\�///N�  -<P�.�N�  .�#�  R` �P��#�  R` �Dp���o �<D�#�  R` �0  'f �` �@unknown application   NV  Hn /. N�  :�P�N^NuNV��n ��/. Hx Hx Hn��N�  2�O� J�mp .��N^Nu  /9  Q�// N�  8�P�Nu/9  Q�// N�  0�P�J�mHx 
N�  9Ѐ��X�Nup�`�NV  Hn /. /. N�  ;*O� N^Nu  H�0 t E�  :� o p 0( / N�&  o p 0( .�N�X�"����fR�J�f�L�Nu `� /  @Jf��� S�Nu  /
"o ��$o 2� $o 2� S���  m.J g R�� g�J gJg �   ��   ���$_Nup Jg�p�`�p `�p`�  H�0 t E�  :��� fp `4 o 0( H�0@/N�&  o 0( H�0@.�N�X�"  ����fR�J�f�L�Nu/$/ /N�  9�X� B���/ gS���d�� $Nu   / A�  <dr F0  gr�ЁNu  // // N�  8�P�r���V�H�H�D�Nu// // // Hz��N�  =�O� Nu  // // /9  Q�N�  :�O� Nu  / o ""AH�0H�JBgR� �$Nup�`�NV��-n ��B���/. /. Hn��B�Hz��N�  D,O� N^Nu o / "/ g  �/��4  g S� �H4 HB4 p ��g8H�6 &(*,.$B&B*B,BH�6H�6H�6H�6H�6H�0S�f�L�l�? �Hg2 DAA S@�H�AN�!!!!Q���0  g1   g$ Nu"_.W��   DN�//// // N�  *P�& / N�  Mr$ X�g// N�  P`P� $&Nu 8�Nu/
/ <  <D/ ?< &NN\�$$_Nu������������������������� �����������Ą������������������������������Ȉ����������������������� 0123456789abcdef 0123456789ABCDEF x0 0 (nil)  O��lH�?>*o �./ �&o �$o �v f L�|�O� �Nu  %f A� B/ 4r ��z &H  +g  n  �   g   #g   *f  �$jD�<| G�  .f H+   *f (T� lf+ l g .R�8@|    Sg �pQ��g �pX��g �0 ��  Eg J2|����p��e  �0     H�H�  xn �2|����p��e � 	Ѐ0;N� � �� ����������(�����/�   �/ N�րP�` Z  -g4  0g t "K �� 	b � B����Ԉ B��H�A� �$&I`�<| R�` ��R� ��  	b*//A 0N�  Q( X� K"/ , ��&HR�  	c�` ��x�` ��T�` ��px��m  �pW��m �r%��f  �/Hx %` �P,j  �D�r/A 8I� @/L <Hx 
/N�  �P�  0�Hx 
//F 4N�  vP�, "/ ,p	��e�J�or��jt  rz Ԁ|@܏"L�Ɛ�J�n �J� 8gb� -(o <T� ������  f(�   �J�nb"S� jp $��S���c\��  gJ�ndR�` �tB� 8` �R 0f r t `�r p `�J/ 4g�� 4`�(I` xJ/ 4g |� 4` t//N�րS�P�`�/p / N�րS�P�`�/Hx  N�րS�P�`�"y  RA� @((H�Jf�#�  RP��Ĕ���  f*J�n0"S� jp $����c.��  g �HJ�o �B/Hx  N�րS�P�`�/Hx  N�րS�P�`�/p / N�րS�P�`�r|x Zpo��g  �px��g  �pX��g  �p
/@ 4/|  =d 8��  fr I� @// 4//A 4/H 8N�  �P�"o 8�  o 0// 4//H 8N�  vP� @"/ ,"o 0�� 4d�J�g  �A���po��gp���rX��flA����rJ�of��jt z Ԅ/B 4t@ԏ"L����  g hpo��g 0fJ�o��J�n T�Jf�` fp` �8p` �2p/@ 4/|  =u 8` �,r ��`� 0f��  gx `�(t `�//N�րS�P�` 4/p / N�րS�P�` 6,gS���  f(�   �J�n6"S� jp $��//N�րP���  g ��J�o ��/Hx  N�րS�P�`�//N�րS�P�`�(Z��  fI���/N�  9�X�����  f,�   �J�n>"S� jp $��z 4X g
r���g0��m,��  g � J�o �/Hx  N�րS�P�`�//N�րS�P�`�/�   �/ N�րR�P�`�J�oS�"LR�� 0J�f��  g�Jf�z "��(/ 4����  f,�   �J�n ��"S� jp (��S���c ����  g ��J�o ��/Hx  N�րS�P�`��  fFC�  L� 0��f�J�f ��I��J� 8g ��� -J�f(Iz ` �
/ 4r@ 4` �z0/ 4`�z0J�o ��`�)taolf(               O���H�?>&oP,/X$o\x BBv B� <g ��g fJ�g
Jf ` ,z  A�  <d0 X g<Jgp 0  g(/N�"  R�X� ��g �p F ��C�  <d1  f�R�`�  %g(Jf /N� R�X���g ��V�H�H�D�B`�`�I� *   %f*Jf"/N� R�X���g T�* V�H�H�D�$L`�`�J g @  *f >I� ~/G @ ��  	b .//A 4N�  Q* X� L"/ 0 ��(HR�  	c�$L  hg   lg  �  Lg *$L��B� HB� DJ�fz�R // A /g �/ / ��  c �/ X /g x/ g /n 
/ d /n t/ c /g �/ d /g �/ [ /f ��J� @f � o`(X/H`B/ L* ^ g �R�z  ]f �R�| ] Lp Jg ]f �E� Jg A�L��B(� Jf
/N� R�X�~LޏK�  N�` �B� @` ��z ` ��, l f@E� ��B� H~/G D` �, h f.E� ��B� D~/G H` ��B� HB� D8| ` �֙�B� H~`�B� D~`�/ /��8G b ��0�   �0| .��  ��0J�f>  
g �  f ��J� @f �� o`"X JgS�"�R� </H`x ` ��| x /p�   �A��0 H�8BA��0 H�<@Jf
/N� R�X�K�  <d`��<| 
`�/N� R�X�p 5  f� -f Z| - L/N� R�X�p���gS�g ���  f �:| r ��~��e � < . g>J�f: 0f4��  g  //A 4/H 8N� R�"/ 4R�X� o 4���g  ���f�`  ���  f0p��g~��f^~��f&`p��f �      xf \<| `�~��f z ��  	c �� ��  b  �A�L��B� R�0| ` �f~
��f� ��  	cڰ�  g �A�L��B-� J� @f,"o`X�`*YpLЏ/ p /f:/B�/ N�  N�*�O� R� <��V��` ��<| ` ��B/ L��` ��<| `�J� DfJ� Hf��  f�/B�/ N�  N�`�r�� Hf$��  g/B�/ N�  N��`�/B�/ N�  N�`��  g/B�/ N�  N�:�` �r/B�/ N�  N�`�Jf^/N� R�X���g �J� @fJ o`./H`p���fzJ�g G�.J�oS�g/N� R�X� ��f�J� @f �R� <x ` �
`�~ `�J� @fZ o`*X/H`JfP/N� R�X���g lI�  <d��  g�J�oS�g/N� R�X� ��f ���  g ��BR� <` ����`�`�Jf
/N� R�X�*CM�  <d`
/N� R�X�p 6  f�B/ LM� Lr �ȓ�~ &֍J�f  � .g nN +gT -gNJ�f  ���  g  �J� @f �$"o`X�` Y��  g  �(z�R*z�R,z�R �!M !N ` �� ��  	b�R��//A 4/H 8/I <N� &֍X�"/ 0 o 4"o 8�  �g���f �^` �zJ�gR +g -f6    �  eg�A�L��(�   +g  -g      ef �@x` �l ��  	c �t`�    eg$ ��  	c .f ���  f �0| ` �Dr` �>2| ` �6J� Dg
B�B� ` �B�` ���` �*T�z` �4�  �n �<A�L��G� R�` �,p ` �&H�<@//N�P�J�gJ�gJ� @fBx ` ��J�g��  g�/N� R�X���f�J� @f ��B` �~$Hx` �Z$L` �$L` �NJgJ�Tg/H�0A/"o\N�P���fJ� <fr�/A < / <L�|�O� Nu~��f.` ��r F��4  g �P` �nJf�`°�  g ��p��f �� ��  c ��<| ` �� 











              H�> */ p v??/ ?< BNAO� 
( BFp??/ ?< BNAO� 
& ??/?< BNAO� 
J�W�H�H�D�L�|Nu / #�  R#�  RNuH�0> /  V�r�&AI�  y  Q���  Q�g:�� b.��M
�g& ( G�  ��d  ΐ�!@ ��!L  ��
�pЈ`L h `�A� $ 9  R��e��  Rd
" Ҁ#�  R @A��&C� /?< HNA\�"@J�fp'#�  R4p L�|Nu*y  Q���  Q�fJr#A 4|����"��M
�#J A� #H ,m #N -I ,i -I #J  #|��
� #M +H ` �2��c�*m `�"h #h  $h %I ` �,   o  �/ gJf�p Nu  NV��Hn��/. /. /. N�  OO� J�l <���J���g <�   N^NuJ���g�D�`�  NV��Hn��/. /. /. N�  OO� J���gD�N^Nu  H�> */ "o  (/ $$E Jg   g�  	g�  -W�H�H�$o (D�$�  -fR�g  �  0fJ R�( �� Bg Xg"J�g  � @v`p�Ȁf  �T�vx,Bp `jr�ȁf  �T�vx`�BCJ�f�x
`��� 	bdH�0AA��и�oFJf2J�g&"B�`  �g  Ѐe    g ��րd ��U� Јd  P�v$FR�Jf�JCg4��  g"�Jf6L�|Nu��H�0AA���r	��m�0| %`� @vx` �N��  fp `�"�`�p�`�   o "/ g  �B /��4  g S� �H4 HB4 p ��g8H�6 &(*,.$B&B*B,BH�6H�6H�6H�6H�6H�0S�f�L�l�? �Hg2 DAA S@�H�AN�!!!!Q���0  g1   g$ Nu  // / &< � "@R��� b�   �f�r ` +f"@`� -f�"@rp ` @����Ј @��H�A� � �� 	c�J�gD�$&Nu  -l  -v  -  -���
�  Q�  Q�      Q�  4$            8�  8�  Q�  Q�  Q��ھ�   ��������    @   �ھ�   ��������    @   �ھ�    ��������    �        D  �        �

X�62�
L
8
�
�("$ "B(">$$D
�""
n"* 4
"(
 


 �*8(*
&*H"442*$" ,.2.22..T$.6"
\&.&$V"
P

**"&
V&jj


4H�R\*.4P8h0�zNF
�$r�R2"$
8&


"�R($&P��n��"���8�dL�TF
$�DzP 