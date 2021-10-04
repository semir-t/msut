#!/bin/sh
# This script was generated using Makeself 2.2.0

umask 077

CRCsum="1532774049"
MD5="a6562597433f4369c899d2f345377f2a"
TMPROOT=${TMPDIR:=/tmp}

label="STM udev rules installer"
script="./setup.sh"
scriptargs="1.0.2-4"
licensetxt=""
targetdir="root"
filesizes="4770"
keep="y"
quiet="n"

print_cmd_arg=""
if type printf > /dev/null; then
    print_cmd="printf"
elif test -x /usr/ucb/echo; then
    print_cmd="/usr/ucb/echo"
else
    print_cmd="echo"
fi

unset CDPATH

MS_Printf()
{
    $print_cmd $print_cmd_arg "$1"
}

MS_PrintLicense()
{
  if test x"$licensetxt" != x; then
    echo $licensetxt
    while true
    do
      MS_Printf "Please type y to accept, n otherwise: "
      read yn
      if test x"$yn" = xn; then
        keep=n
 	eval $finish; exit 1        
        break;    
      elif test x"$yn" = xy; then
        break;
      fi
    done
  fi
}

MS_diskspace()
{
	(
	if test -d /usr/xpg4/bin; then
		PATH=/usr/xpg4/bin:$PATH
	fi
	df -kP "$1" | tail -1 | awk '{ if ($4 ~ /%/) {print $3} else {print $4} }'
	)
}

MS_dd()
{
    blocks=`expr $3 / 1024`
    bytes=`expr $3 % 1024`
    dd if="$1" ibs=$2 skip=1 obs=1024 conv=sync 2> /dev/null | \
    { test $blocks -gt 0 && dd ibs=1024 obs=1024 count=$blocks ; \
      test $bytes  -gt 0 && dd ibs=1 obs=1024 count=$bytes ; } 2> /dev/null
}

MS_dd_Progress()
{
    if test "$noprogress" = "y"; then
        MS_dd $@
        return $?
    fi
    file="$1"
    offset=$2
    length=$3
    pos=0
    bsize=4194304
    while test $bsize -gt $length; do
        bsize=`expr $bsize / 4`
    done
    blocks=`expr $length / $bsize`
    bytes=`expr $length % $bsize`
    (
        dd bs=$offset count=0 skip=1 2>/dev/null
        pos=`expr $pos \+ $bsize`
        MS_Printf "     0%% " 1>&2
        if test $blocks -gt 0; then
            while test $pos -le $length; do
                dd bs=$bsize count=1 2>/dev/null
                pcent=`expr $length / 100`
                pcent=`expr $pos / $pcent`
                if test $pcent -lt 100; then
                    MS_Printf "\b\b\b\b\b\b\b" 1>&2
                    if test $pcent -lt 10; then
                        MS_Printf "    $pcent%% " 1>&2
                    else
                        MS_Printf "   $pcent%% " 1>&2
                    fi
                fi
                pos=`expr $pos \+ $bsize`
            done
        fi
        if test $bytes -gt 0; then
            dd bs=$bytes count=1 2>/dev/null
        fi
        MS_Printf "\b\b\b\b\b\b\b" 1>&2
        MS_Printf " 100%%  " 1>&2
    ) < "$file"
}

MS_Help()
{
    cat << EOH >&2
Makeself version 2.2.0
 1) Getting help or info about $0 :
  $0 --help   Print this message
  $0 --info   Print embedded info : title, default target directory, embedded script ...
  $0 --lsm    Print embedded lsm entry (or no LSM)
  $0 --list   Print the list of files in the archive
  $0 --check  Checks integrity of the archive
 
 2) Running $0 :
  $0 [options] [--] [additional arguments to embedded script]
  with following options (in that order)
  --confirm             Ask before running embedded script
  --quiet		Do not print anything except error messages
  --noexec              Do not run embedded script
  --keep                Do not erase target directory after running
			the embedded script
  --noprogress          Do not show the progress during the decompression
  --nox11               Do not spawn an xterm
  --nochown             Do not give the extracted files to the current user
  --target dir          Extract directly to a target directory
                        directory path can be either absolute or relative
  --tar arg1 [arg2 ...] Access the contents of the archive through the tar command
  --                    Following arguments will be passed to the embedded script
EOH
}

MS_Check()
{
    OLD_PATH="$PATH"
    PATH=${GUESS_MD5_PATH:-"$OLD_PATH:/bin:/usr/bin:/sbin:/usr/local/ssl/bin:/usr/local/bin:/opt/openssl/bin"}
	MD5_ARG=""
    MD5_PATH=`exec <&- 2>&-; which md5sum || type md5sum`
    test -x "$MD5_PATH" || MD5_PATH=`exec <&- 2>&-; which md5 || type md5`
	test -x "$MD5_PATH" || MD5_PATH=`exec <&- 2>&-; which digest || type digest`
    PATH="$OLD_PATH"

    if test "$quiet" = "n";then
    	MS_Printf "Verifying archive integrity..."
    fi
    offset=`head -n 500 "$1" | wc -c | tr -d " "`
    verb=$2
    i=1
    for s in $filesizes
    do
		crc=`echo $CRCsum | cut -d" " -f$i`
		if test -x "$MD5_PATH"; then
			if test `basename $MD5_PATH` = digest; then
				MD5_ARG="-a md5"
			fi
			md5=`echo $MD5 | cut -d" " -f$i`
			if test $md5 = "00000000000000000000000000000000"; then
				test x$verb = xy && echo " $1 does not contain an embedded MD5 checksum." >&2
			else
				md5sum=`MS_dd "$1" $offset $s | eval "$MD5_PATH $MD5_ARG" | cut -b-32`;
				if test "$md5sum" != "$md5"; then
					echo "Error in MD5 checksums: $md5sum is different from $md5" >&2
					exit 2
				else
					test x$verb = xy && MS_Printf " MD5 checksums are OK." >&2
				fi
				crc="0000000000"; verb=n
			fi
		fi
		if test $crc = "0000000000"; then
			test x$verb = xy && echo " $1 does not contain a CRC checksum." >&2
		else
			sum1=`MS_dd "$1" $offset $s | CMD_ENV=xpg4 cksum | awk '{print $1}'`
			if test "$sum1" = "$crc"; then
				test x$verb = xy && MS_Printf " CRC checksums are OK." >&2
			else
				echo "Error in checksums: $sum1 is different from $crc" >&2
				exit 2;
			fi
		fi
		i=`expr $i + 1`
		offset=`expr $offset + $s`
    done
    if test "$quiet" = "n";then
    	echo " All good."
    fi
}

UnTAR()
{
    if test "$quiet" = "n"; then
    	tar $1vf - 2>&1 || { echo Extraction failed. > /dev/tty; kill -15 $$; }
    else

    	tar $1f - 2>&1 || { echo Extraction failed. > /dev/tty; kill -15 $$; }
    fi
}

finish=true
xterm_loop=
noprogress=n
nox11=n
copy=none
ownership=y
verbose=n

initargs="$@"

while true
do
    case "$1" in
    -h | --help)
	MS_Help
	exit 0
	;;
    -q | --quiet)
	quiet=y
	noprogress=y
	shift
	;;
    --info)
	echo Identification: "$label"
	echo Target directory: "$targetdir"
	echo Uncompressed size: 40 KB
	echo Compression: gzip
	echo Date of packaging: Thu May 14 14:37:56 UTC 2020
	echo Built with Makeself version 2.2.0 on 
	echo Build command was: "/usr/bin/makeself \\
    \"--notemp\" \\
    \"/src/work/udev_rules_installer/makeself/root\" \\
    \"/src/work/udev_rules_installer/makeself/st-stlink-udev-rules-1.0.2-4-linux-noarch.sh\" \\
    \"STM udev rules installer\" \\
    \"./setup.sh\" \\
    \"1.0.2-4\""
	if test x$script != x; then
	    echo Script run after extraction:
	    echo "    " $script $scriptargs
	fi
	if test x"" = xcopy; then
		echo "Archive will copy itself to a temporary location"
	fi
	if test x"y" = xy; then
	    echo "directory $targetdir is permanent"
	else
	    echo "$targetdir will be removed after extraction"
	fi
	exit 0
	;;
    --dumpconf)
	echo LABEL=\"$label\"
	echo SCRIPT=\"$script\"
	echo SCRIPTARGS=\"$scriptargs\"
	echo archdirname=\"root\"
	echo KEEP=y
	echo COMPRESS=gzip
	echo filesizes=\"$filesizes\"
	echo CRCsum=\"$CRCsum\"
	echo MD5sum=\"$MD5\"
	echo OLDUSIZE=40
	echo OLDSKIP=501
	exit 0
	;;
    --lsm)
cat << EOLSM
No LSM.
EOLSM
	exit 0
	;;
    --list)
	echo Target directory: $targetdir
	offset=`head -n 500 "$0" | wc -c | tr -d " "`
	for s in $filesizes
	do
	    MS_dd "$0" $offset $s | eval "gzip -cd" | UnTAR t
	    offset=`expr $offset + $s`
	done
	exit 0
	;;
	--tar)
	offset=`head -n 500 "$0" | wc -c | tr -d " "`
	arg1="$2"
    if ! shift 2; then MS_Help; exit 1; fi
	for s in $filesizes
	do
	    MS_dd "$0" $offset $s | eval "gzip -cd" | tar "$arg1" - $*
	    offset=`expr $offset + $s`
	done
	exit 0
	;;
    --check)
	MS_Check "$0" y
	exit 0
	;;
    --confirm)
	verbose=y
	shift
	;;
	--noexec)
	script=""
	shift
	;;
    --keep)
	keep=y
	shift
	;;
    --target)
	keep=y
	targetdir=${2:-.}
    if ! shift 2; then MS_Help; exit 1; fi
	;;
    --noprogress)
	noprogress=y
	shift
	;;
    --nox11)
	nox11=y
	shift
	;;
    --nochown)
	ownership=n
	shift
	;;
    --xwin)
	finish="echo Press Return to close this window...; read junk"
	xterm_loop=1
	shift
	;;
    --phase2)
	copy=phase2
	shift
	;;
    --)
	shift
	break ;;
    -*)
	echo Unrecognized flag : "$1" >&2
	MS_Help
	exit 1
	;;
    *)
	break ;;
    esac
done

if test "$quiet" = "y" -a "$verbose" = "y";then
	echo Cannot be verbose and quiet at the same time. >&2
	exit 1
fi

MS_PrintLicense

case "$copy" in
copy)
    tmpdir=$TMPROOT/makeself.$RANDOM.`date +"%y%m%d%H%M%S"`.$$
    mkdir "$tmpdir" || {
	echo "Could not create temporary directory $tmpdir" >&2
	exit 1
    }
    SCRIPT_COPY="$tmpdir/makeself"
    echo "Copying to a temporary location..." >&2
    cp "$0" "$SCRIPT_COPY"
    chmod +x "$SCRIPT_COPY"
    cd "$TMPROOT"
    exec "$SCRIPT_COPY" --phase2 -- $initargs
    ;;
phase2)
    finish="$finish ; rm -rf `dirname $0`"
    ;;
esac

if test "$nox11" = "n"; then
    if tty -s; then                 # Do we have a terminal?
	:
    else
        if test x"$DISPLAY" != x -a x"$xterm_loop" = x; then  # No, but do we have X?
            if xset q > /dev/null 2>&1; then # Check for valid DISPLAY variable
                GUESS_XTERMS="xterm rxvt dtterm eterm Eterm kvt konsole aterm"
                for a in $GUESS_XTERMS; do
                    if type $a >/dev/null 2>&1; then
                        XTERM=$a
                        break
                    fi
                done
                chmod a+x $0 || echo Please add execution rights on $0
                if test `echo "$0" | cut -c1` = "/"; then # Spawn a terminal!
                    exec $XTERM -title "$label" -e "$0" --xwin "$initargs"
                else
                    exec $XTERM -title "$label" -e "./$0" --xwin "$initargs"
                fi
            fi
        fi
    fi
fi

if test "$targetdir" = "."; then
    tmpdir="."
else
    if test "$keep" = y; then
	if test "$quiet" = "n";then
	    echo "Creating directory $targetdir" >&2
	fi
	tmpdir="$targetdir"
	dashp="-p"
    else
	tmpdir="$TMPROOT/selfgz$$$RANDOM"
	dashp=""
    fi
    mkdir $dashp $tmpdir || {
	echo 'Cannot create target directory' $tmpdir >&2
	echo 'You should try option --target dir' >&2
	eval $finish
	exit 1
    }
fi

location="`pwd`"
if test x$SETUP_NOCHECK != x1; then
    MS_Check "$0"
fi
offset=`head -n 500 "$0" | wc -c | tr -d " "`

if test x"$verbose" = xy; then
	MS_Printf "About to extract 40 KB in $tmpdir ... Proceed ? [Y/n] "
	read yn
	if test x"$yn" = xn; then
		eval $finish; exit 1
	fi
fi

if test "$quiet" = "n";then
	MS_Printf "Uncompressing $label"
fi
res=3
if test "$keep" = n; then
    trap 'echo Signal caught, cleaning up >&2; cd $TMPROOT; /bin/rm -rf $tmpdir; eval $finish; exit 15' 1 2 3 15
fi

leftspace=`MS_diskspace $tmpdir`
if test -n "$leftspace"; then
    if test "$leftspace" -lt 40; then
        echo
        echo "Not enough space left in "`dirname $tmpdir`" ($leftspace KB) to decompress $0 (40 KB)" >&2
        if test "$keep" = n; then
            echo "Consider setting TMPDIR to a directory with more free space."
        fi
        eval $finish; exit 1
    fi
fi

for s in $filesizes
do
    if MS_dd_Progress "$0" $offset $s | eval "gzip -cd" | ( cd "$tmpdir"; UnTAR x ) 1>/dev/null; then
		if test x"$ownership" = xy; then
			(PATH=/usr/xpg4/bin:$PATH; cd "$tmpdir"; chown -R `id -u` .;  chgrp -R `id -g` .)
		fi
    else
		echo >&2
		echo "Unable to decompress $0" >&2
		eval $finish; exit 1
    fi
    offset=`expr $offset + $s`
done
if test "$quiet" = "n";then
	echo
fi

cd "$tmpdir"
res=0
if test x"$script" != x; then
    if test x"$verbose" = xy; then
		MS_Printf "OK to execute: $script $scriptargs $* ? [Y/n] "
		read yn
		if test x"$yn" = x -o x"$yn" = xy -o x"$yn" = xY; then
			eval $script $scriptargs $*; res=$?;
		fi
    else
		eval $script $scriptargs $*; res=$?
    fi
    if test $res -ne 0; then
		test x"$verbose" = xy && echo "The program '$script' returned an error code ($res)" >&2
    fi
fi
if test "$keep" = n; then
    cd $TMPROOT
    /bin/rm -rf $tmpdir
fi
eval $finish; exit $res
� �W�^�[{s�F���BU�Ä֝(/I�zz�({I�P$� �$�"��!Y�}��~�3 !���UZmvCT�03�=������~Uq���j�{��>�?����zQ���;���9��}���a����$��P�� ������;�y��vU���DF2��#�3V�^�����Ͽ��U��T�������nm�����k�����?�z)�n���i���8v�)j�je��k�Q<��#/�2���GQI�y�|~Ĥ-�3X�����l_4*���K�k�;���$J��v;�ot!�Q~������@;F�0�����]��b\�c배�_ś�N��>,�&��H��E�<�0�á�"<[͋�q���l]�u�o�6[��a��t.�v�'�Ku��~�x񧻖�����m���h��+����?iC�vG[�(�U�ȝ��r:���m
���I��d(��H���pő$W�<��a�aG����.����"z�/H�����o����;��^������R�������d�I����h���<p��������l?���vv�W����?Nd��/?(�N�Ok����r��������`:�� ����C�G�]?q�����]=��Y��jue��b��n<k�F׆��[QXo@뚎�7�<������Z��N|/�k�k���1��l�ާ�S����~V�Ā'��a 'r���#�����h�%¼
��J?����p&r�ע#ow���px-����4ԞH�=���A
��J͡A(��f9�fp/"F��W�`�����q��K7�@��@N�;�l�a1�#ϭ	G��n:]�<�V��%@z�l��c~ x�C㭎huϬ�۱D�_u�lG8����c��Y��<�h�ټ�c�+h8'�f�D�j��?��{�V�kv�7�I�uN�֮wZVêw;��]w@_��4y�����1p�Q�l�π�x��#̓�a3�z�m6m��E��%MH�n۠�$*��3�q"@�}�Xt���nK����V��K�9�A���P�X��F��h"��)؃�ӎҺ-@G�8(�y��W�!~��z>5'�q2��^$�D��dߋл��#��H�bXāpg3�;�H����*��4c���C_�pT��$J5��A8BV-V*/�����{��&9���a,IE�2�"Tt$Ǟ(�+YK!R�Jš7Hb/�Kx����'��� -C�7�}�=H�`�`����фP�4�7Hb��xc2F��A��~Aƭ7�M|�2 ��n��0��Ѣ�Me��7F���o�h�d��TT� $�A�)�p��q�z>S;f�,B��J�� %`y���MT�L\o*Ch��cZ�I�W�=�riK�t*SR5`��A�B��_��� ����'c
�㹧��MK\'�b.�d6"7Hs�~R�+��P◼;w�*�z�Q0L�k���m���T;�Qx�$��5���	�TDSz��F}w*��%����VW��9L��0"]n[S%�$�$��"Vnʀ�Q[YX��b���F�r���A4�C�q����
�Hmu�"���hb��dD��W�2���+��.o��.���!�<�n��a��O��^����L�RS�t�/��]���r���^���=�A@>r\�.���B!�A�&�(b��rQ�Z��島���$���%��e�'�F�+�����+�+$��e��s��k��qV���
R��BN�y2 l��lAZk�дH,�D@��ı����,���c�o�s��0-���/ur�A��TDanADא9����7Rw�v��M�*
.���b��;��V>��I��C�cHM�$;�;/"���ȭ�M�7%\B%�o�E�4l���i��̯�4I���*�@����2�;�{N� �2Bx���n�{$Hq��S	B��N��e���v�e'���G-5�U�r�(�#�8CLT�����u�9�I��Ph�)U
&�`��� ������3s�tT�G��3��h[YJâ�(Z��I���[���tkv����OG[���4�@W��.�)*�z3�p����_;��=o��XyCyE�#b��Xy��,K�]��XW*0�N2�w��ާ���ȼC�,)M^��1�J�D<��;�%���!d!s^5,O\X�q�Y��Cᙳ�!��c�F��Uя���2 sF�o��k�o0=��l8�
��Cvz_����g9-N<��PX�dn:s-C�^}�'��k�����ʽS�C�I�܌ǺZ'�T��eI.eb�q��It�B�Ub�"�,Vi��u�5�Nj)E�z(��^�noo4W3�,�h�O��v(�--�E8\�.����i]����K��n���ݎ}��:�(��x������qJ�F�n
t�kvi6Jz��1Q�[4�Yo�T3���Ұ�ͱ��R���|u	έN���ݰ��%qbw��)N�C����k���u�-��A5}��I��'H�B�\rG�A;��Bۢ���z `ұ���}��1y'=,p��s� b��*�5�7�Za]Шsf6�X
�p��Q�R�O�����wu	,�c��U�����:#f粤a:���������#�_�:6^�u2Q��kCx�8m���X��P���^4Z��X%`蚌  ����Y$�7uzmՕ:k�S@����ǡ>ml%=P⁖�3��]�N�I,p��z7?���nn��i�6�S�Y���6!P�;m�B��Ξ�	��YZ=������0�/l"_/��9��E��~����~�����hi\��y���aV���)�Zf�auVյ�!�:�����g�-��;w�'�Z�xf}�qZ������9��p�/K��c.�-�����VsJ���Q���%����G�\j2ٶ���['�'�x)�)>F�'ŝ�Թŗߦu�U�H|�?�yR�5�Y������H��LSq-�3���Y���!�i�[E���j��W���:���l�����6��}���rڬ1]��c�|����y�E��b;�VJbxQ�a�Ȑ��aFil�����HP�+c�R�`;"L|����%,�\�CYFd�f "n,r7S� �7K�Y��@!��]E���� �4�H�+�� xߏ�x"|XO~M����H7�W�Q|���t:}�^3�&�)¡a���3�X%��N���#����s Bpp�;"9g�Q��[���(�}�mnݿ����X��p_��c����n�l�/��a?�\�W
 k=�/&�=P� �z�*�G�f�D�r�}�:�3�{�I��1��V惱F����T1;t}�4Cw��k�����8ˈ�t&H$_����E���ƀ�Q��)��;���|I��ǡҎApL
���i�����L笯����O�����֭n���V8���[�%g���r�B��/,��ـߛ�j)���V�E9���D�  �^f�ԯ�s�����t� 'ku�(_c��2���MFA�[�vZ�k��Ft��A�}W���)%���]o��_)�I+|E �7>�dA�	**(H�H��DG��r
فiԇ�Gg�`fn��	�@İ������{�R&2�*�x��[#y���,~� �B9U�u��>�\��SB�jX�������̍�i�볅,(����_4�*��n��QrE5�zU��,h��a�^R�1��	�4j)�)��NuB+DEԕ�>:�Ʌ9�ff�r�Q�a��0��=!AzE�����>�G��ߤ��|OD"q���.?���EA~R��B��0�u^��٪Zxȯ�8 oXZ�.5�!��j�@d0�Mf�.�灇{��:Ǜ �qC�@���\#�s*�%�a�la���tۇ�P�ސ�v����M��JS������Bբ�MD�Z�V<R����@�8�{�0� Kr>n���%2fX��Em9��g˪��&��X5��a��͆�%�v��CJ!&��Wj�Gw�L�A9�E�
�ndEd�i�H��\6�$�jJ~�^�˱|�=��*�癯�Q|}��V��%թ�{�Tt����i�n�#�N�i�ǏJE�iO+��������/�L{�����%�Xί6�~�D�[ۘm ��/��r��s	:����w��.L�ݾ��<W2{�~���_�s��m׶w��o�����C�����(S��Dn��w|*�^�D�O�.��r�׋��d�j��<9���>��}��(��dGL�P�%�5��!e8��&�'	7���|�'=�OEԍʘ蠏�*��r�k�u͚�}-���7Q�%���}%���Em��;n�x��P\旕�WM�&`�����O�����g}`�+�����@�):U�2�>&$�����_*-%�=�ST�Ň�r��$���l��Rc�VU\�#�fdz�F�������9��?�#�����~�YE�e��k	��^�w����V�������4o}��H���Χ���\[�5�D8M����q�!"�\0�\�F^��E^�tq��h9l!��Y����1�+�S���>��z��&��%vS��Ħ��I6g��5�âĦ�W>���|��bw����9�檟~(���E�vzB����g�+�յ�V��Z]�ku��յ�V��Z]��}�?��	� P  