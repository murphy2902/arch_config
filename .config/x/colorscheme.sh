#!/bin/sh

XRESFILE="$XDG_CONFIG_HOME/x/.color_Xresources"
COLORSCHEME="haruko"


[[ -f  $XDG_CONFIG_HOME/x/${COLORSCHEME}.sh ]] && . $XDG_CONFIG_HOME/x/${COLORSCHEME}.sh && echo "SUCCESS"

echo "*color0 : ${COLOR_0}" > $XRESFILE
echo "*color1 : ${COLOR_1}" >> $XRESFILE
echo "*color2 : ${COLOR_2}" >> $XRESFILE
echo "*color3 : ${COLOR_3}" >> $XRESFILE
echo "*color4 : ${COLOR_4}" >> $XRESFILE
echo "*color5 : ${COLOR_5}" >> $XRESFILE
echo "*color6 : ${COLOR_6}" >> $XRESFILE
echo "*color7 : ${COLOR_7}" >> $XRESFILE
echo "*color8 : ${COLOR_8}" >> $XRESFILE
echo "*color9 : ${COLOR_9}" >> $XRESFILE
echo "*color10 : ${COLOR_10}" >> $XRESFILE
echo "*color11 : ${COLOR_11}" >> $XRESFILE
echo "*color12 : ${COLOR_12}" >> $XRESFILE
echo "*color13 : ${COLOR_13}" >> $XRESFILE
echo "*color14 : ${COLOR_14}" >> $XRESFILE
echo "*color15 : ${COLOR_15}" >> $XRESFILE
echo "xterm*colorBD : ${COLOR_BD}" >> $XRESFILE
echo "xterm*colorIT : ${COLOR_IT}" >> $XRESFILE
echo "xterm*colorUL : ${COLOR_UL}" >> $XRESFILE
echo "xterm*foreground : ${COLOR_FORE}" >> $XRESFILE
echo "xterm*background : ${COLOR_BACK}" >> $XRESFILE
echo "xterm*cursorColor : ${COLOR_CURS}" >> $XRESFILE

xrdb -override $XRESFILE

nitrogen --restore &
