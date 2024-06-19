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
BZh91AY&SY9~�0  Z_� }�����������P�   �L�4�1�Ѧ �h0�2dѠ4i����0&�1#A� q�&��LFF�!�4i�1  Ì�4hb241	�LA��a R@ �=OS��M44���hd���Mę�<eO�OW���J~������\i]N���YZ�MTo�~Nd�[�L|��n�S~I�+�i#���\�\�_?R߯'��)����󥙙ȳ67�6;���7�b��k�By.ʟ:�_��O�>l��/<�+�|JK�����G�#�~f7�i��]�&JN�o3��̰�8M��y'�[{������[�jӶ�Iż�B1�׉�	�����}��t���s�ԾO���enx�y_���)9jt�����lmN�#kj�֬�n�'^t�v����$�n�����p.�y��>*^wc��b;EŎ�C����e}�<�^��I��jf^�T�O鍙u�YʵWCg����ա���	��՟(�����|W�עg�Lɭ�)#b�ɔ*�u`t?�����yI�,��δ�����S�)D.p/��hR��RoZG���/�u�����Yp�cZ��uЊ�.-IZ��0�{�┞�k��.E~V�;(ڲy�H��o�$��&�	�O��j����l#���VϟB��U2�Ըgz�����8��ڈ�K��,i<�����ьMQUr-Đ�1#l]�cD꩕KfQ�L�&B�sr1��R�Á(adk�����"+Df<L'�x�$��bRC�������fȘ�	�G��N���&њt�>�Y��,�,����;��ȸJ0��	��;"�b���s�CnF䜉)[�g�+��qE��TP��ԓz���20��IJ!�,1�':E�ctb�vfv�N�;i����˒�	I";���{�����R�2=+�syB:��|���ʾ�{����&���rE8P�9~�0