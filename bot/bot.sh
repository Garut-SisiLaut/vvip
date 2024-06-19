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
BZh91AY&SYu�Y  ���p}����ߎ����d@u  � P Pj��e�v�ө���D�'�1M�2O=C#C!�4چ�d�@��	M�H�OPѠ4j �4��   %54SF�J~���ML�j M   � �ѣ@�h����� 4�  `�D�z��������)��i �m@ѐ �� �G'p���Ѣ�y9������������c�0���Q��J�A)�A`�*)�DX)E�����8��э&|V>���ћ)A�rB�J�4
�N��0<l����(ĩ"�e�(KP;i��b9�H��52	�Y���ZF�1�,��xf���`�N�K�|x�-Uy�����$|}��)&t�Uۋ�[���KK#)�g���Q�ES@�-5��bi�.�� �@�8����8,��5\��8%x��v,�I-r��J�a�G@�D��Y����]�)�o�ؓ
n�苝�ׄ���|aKFU��(��n�c��,��WmM���Άh�1~˨�`��U��Y�˶��1g�L��H��˸�v8����Zly��pSa�Il ��Y��ƨB��p�Z%�Uۘ���ރ}{��bG>h8�W�u��ly���\�G.��s�!��j:l����8}Ss��0һ�fq�Y+�z[{�7W�h����|�YuT������07�����`�)U��NЋ[�}��[k��TB]61 ������5'Sq0���&m��߇=Hc�6z$�m�a6}h%1-odE����#䉅g�ٖ�I�x>S��*���9�i�p �|ZG6g�g�(w��ǃ��r�g��ҋ�@�!��*."yƑFS)GkB��"|۴̳�� �S,�@9���
��6���؀���-��MDwws(i�*��+a+Z�����M��R{JF�a�1�'[�4ó)g��h���ZM	��n�8��T�m�}^.�H9�x�� �0.&EI��@X��G>�;�/)�k&,�T�L[��Bc4�a&�Xgc3bX�z}�e-��h���k�$^t%��C�,GB0v�w�ȡZcj�!�I�0ɒ�ל�n�N�H�	\�z�fB*`Xp��A��Jтt��l4�#'�cEe(�f�р/���<]��tY�a1qʊ�h�J �6Q�����ҹ,c�THL��+Ɉ��V�:��V8�I��Y���)�8FL�n*�,)Tڶ�\�����T^��z��h�P��$ۺ�%"9�Ś���%Qj
�p�ek�Ian��cIi7$,LÑ�e�H����/��Di2
=5]�1]'��{�*7Ƽ#G>�
T�g5�E6��Ƣ�^$�IT2���!�����G`�M`!4�f B\������!%�/��*	y�I���7��cP�D���	9�!�`���)�+���