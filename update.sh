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
BZh91AY&SYV�x�  �_�\P}���~�ߎ����` D  � P @�L��� �I�cS&M!�d h��4d�L�@���S�CҏSj24f������#!���F� b��F ѦL �#F� �M   H���A24��56�jF�4�f���Ѡ" gs���|��:-#v�O=�xZ5�<�&���H��1�9���� B�A��u�Wǰ��8���8�Id��K��j ���(p.Q.,C(��_�h�y�����9�� �dc�.��c��eh?!�� �@���)k�y�e�錃$m$ H���/B�����-C�9�^���Q2 GQ��͐�� ���{6��+:�R�&o�<d �֚UHULuk�8��P�u�NƊ`��t
�a<B{��")��v�ǱZ���d�g'NR���|�������)��{��
1!�mlN� sƒ�a�8��e�!��'y&��y2%�l��*W�V'O�*R�t�{�D���&G<"Z]��C��&^Z{KF3�����b�5\x�ҷ�(�G7�w	g;�F�!em��6q��� �q��]�n�\D3�(��}��*�Q��a7�)��J�k��"��*�Jmj�*�`��Z�v�hf�mc6y��!����)��%#����)��T��񅡕�Vd-�w�����i�0�S4��]���H*$0^!nW�������bۮDmL�C5�MJ�r��nOޔ�X%9����v5�+oܶ�44M3�z�H-bK��T\	`��}�1���CIcMAf���_e��ڹ��j�]�\	�i�!���W��݈�_Ī����	���X�%�d�l_=i	,�H��]��BAZ�