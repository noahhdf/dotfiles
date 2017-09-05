#!/bin/sh

B='#00000000'  # background (transparent)
D='#4C566Aff'  # default (dark grayish blue)
T='#D8DEE9ff'  # text (white)
W='#BF616Aff'  # wrong (red)
G='#A3BE8Cff'  # verifying (green)

~/.config/i3/i3lock   \
\
--insidevercolor=$B   \
--ringvercolor=$G     \
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
--keyhlcolor=$G       \
--bshlcolor=$W        \
\
--screen 0            \
--blur 7              \
--clock               \
--indicator           \
--timestr="%H:%M"  \
--datestr="%d.%m.%Y" \
--timefont=OfficeCodeProD \
--datefont=OfficeCodeProD \
--textsize=20 \

# --vertext="Drinking verification can..." \
# --wrongtext="Nope!" \
# --textsize=20
# --modsize=10
