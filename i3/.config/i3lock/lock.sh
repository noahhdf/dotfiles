#!/bin/sh

source $HOME/.cache/wal/colors.sh

B='#00000066'  # background (transparent)
D='#4C566Aff'  # default (dark grayish blue)
T='#D8DEE9ff'  # text (white)
W='#BF616Aff'  # wrong (red)
W='#FF0000FF'  # wrong (red)
G='#A3BE8Cff'  # verifying (green)

# pic=/tmp/screen.png
pic=$(cat ~/.cache/wal/wal)


# scrot $pic && convert $pic -scale 5% -scale 2020% $pic

i3lock   \
-i $pic \
-e \
\
--insidevercolor=$B   \
--ringvercolor=$color7"ff"     \
\
--insidewrongcolor=$B \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$color8"ff"        \
--linecolor=$B        \
--separatorcolor=$color8"ff"   \
\
--textcolor=$color7"ff"        \
--timecolor=$color7"ff"        \
--datecolor=$color7"ff"        \
--keyhlcolor=$color7"ff"       \
--bshlcolor=$color1"ff"        \
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

# rm $pic
