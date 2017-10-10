#!/bin/sh

B='#00000000'  # background (transparent)
D='#4C566Aff'  # default (dark grayish blue)
T='#D8DEE9ff'  # text (white)
W='#BF616Aff'  # wrong (red)
G='#A3BE8Cff'  # verifying (green)

temp=/tmp/screen.png

scrot $temp && convert $temp -scale 5% -scale 2020% $temp

~/.config/i3lock/i3lock   \
-i $temp \
-e \
\
--insidevercolor=$B   \
--ringvercolor=$T     \
\
--insidewrongcolor=$B \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--textcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--keyhlcolor=$T       \
--bshlcolor=$W        \
\
--screen 1            \
--clock               \
--indicator           \
--timestr="%H:%M"  \
--datestr="%a, %d.%m.%Y" \
--timefont=OfficeCodeProD \
--datefont=OfficeCodeProD \
--textsize=20 \
\
--wrongtext="" \
--veriftext="" \
--textsize=30

rm $temp
