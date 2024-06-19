#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�: +_�P0}���5ߎ����` D  � P `�:�@�@�"�К���i4������d���SG�ѧ�2���L��ѐɐ  24��0�A=�~�H  4        sLFFM2hCFC&@  ��#@�4�dd�&�d4d2d  �24!�$H ��4�hh�(���CI�4 i�4��𢂂�������s͟RSeШL:�[�H��m�m&�&$����[f�al�����At}ΎN����Ng�� �!��A0=P�,*�����[|����fm{��0	� �a��f6z�rG|@��)l�s1���#����lHx����'I?}�qșeۡi��������� o���L�+��y���c{s:�
g�{xa���t�u�/���sȪo���=��/���g2 ��� @D ��ȐuvD	#U0�5���8���n�[Bt�Ū��͕�-�bB=�uB'�UL*���� J`�ۭ6\��:��D{��>��X���d��R�����p�LڠL�cm�m���A; ��k#�mn�Hi\��
���cn�F�d�Ͷ��=(�>/l��*�ń1����ޜ'a՟j�1��4�$m��y{�I~(��阬�n����iBg�-J6Sv��L0<�'�0�;�m�8l	�mRߝ�y�8C,��h��D��C,���$k�0͐_����j
���b*�[�D��xm�X^��5�,�Ŷ�V
V�� #��d����Ið�Z��Y5k=<����I�@�qyB�J��!��8R(�Jv���M���j �����S4�s�T�P�v`b��]���Re��|�ir�r�[a���P�&AD�?d�l@6	����7x���R~⁼�y��`݁ �ȵcE:̒���QC�]�Ջ�9�Wj��̸��ez�*~L��U�qzv�[JUYMpe2D}pT׷C�}Fr��2ߨ�wP��䏂����Cj8�Ql��]bg�I��,��˯�X�:�T!9�����\�-��i_!f$��b@�������.�BE�WҐ��jA�#2�$`W�0��5�#��$��᩿��QyuX*���52���"N�}�A��(�gpV�!�u�H/L�Ĳ������;��dHkt-���3�)5Ӄ����GN�"bHX	H��h���#��� Ki�
�����H�#���Ȱ	�L�H��{�3ג/á�	�g�HFШ��{|�g�r��9tf=��4\?���9���3�kM���۔#M�B�hUBג]Z�A�qHH�|��d2��Ԁ��H����Lsp@j{����.�L��H {�U�t_(� 6[E��X}���vA%�m^0Bۡ��y���ݔ[l��#j�"k���⶙2�|��1�ĄT�BF��;������L�F�A�X��)��c5 �~�O��4H�[�:E0�&v�`q��K�D����A!2+�,�U�6�_�s��[S 2��!��(R`w�:�o�߆|zK�1�}A��`��ZWL�o%uLM�)�@B����PI�w�=;��-�����2��l%[�F7~�I���l�E�E��U�T�
@�vky�[���F�ek{V�u�(������HE4�.�׿p䉈h -d)E$;#L�#Bl+�)�@)x��&A�\����	�4��-��E���D�8�X�.��i�g������y��	~�P
��ņ�y���t�A�D�}|ɢD���)H�x�H�2�IZ�ŋ�P}����� Q��@�Hu�A�Ȁ�l� ���?��H�
��'@