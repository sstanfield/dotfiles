# ~/.kshrc

. ~/.shrc.funcs

setPath

if [ -f ~/.localrc ]; then
	. ~/.localrc
fi

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

setShopt

export USER=`id -un`
export LOGNAME=$USER
export HOSTNAME=`/bin/hostname`
export HOST=${HOSTNAME%%.*}
export HISTSIZE=1000
export HISTFILESIZE=1000
export FCEDIT='/bin/vi'
export INPUTRC=/etc/inputrc

# Escape key entered with control+v + ESC
ESC=""
# The non-printing character entered with control+v + control+a
NP=""
# The carriage return character entered with control+v + control+m
CR=""
# The non-printing character (007) entered with control+v + control+g
BL=""

# Notes for not counting control characters against prompt length.  You need
# start with a $NP$CR to identify $NP as the marker for not counting and
# then surround any not counted characters with $NP[chars]$NP.

if [ "`id -u`" -eq 0 ]; then
  PSHASH='#'
else
  PSHASH='$'
fi

# Use ${PWD##*/} if you only last part of PWD.
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
#xterm-color|rxvt)
xterm*|rxvt*|screen|ansi)
  PS1='$NP$CR${NP}${ESC}]0;${USER}@${HOST}: ${PWD}${BL}${NP}$NP$ESC[01;32m$NP$USER@$HOST$NP$ESC[00m$NP:$NP$ESC[01;34m$NP${PWD##*/}/$NP$ESC[00m$NP${PSHASH} '
  # Use the below for xterm title tracking but no color prompt.
  #PS1='$NP$CR${NP}${ESC}]0;${USER}@${HOST}: ${PWD}${BL}${NP}$USER@$HOST:${PWD}${PSHASH} '
  ;;
linux) # Use color but xterm title.
  PS1='$NP$CR$NP$ESC[01;32m$NP$USER@$HOST$NP$ESC[00m$NP:$NP$ESC[01;34m$NP${PWD##*/}/$NP$ESC[00m$NP${PSHASH} '
  ;;
*)
  # No xterm title tracking or color.
  PS1='$USER@$HOST:${PWD##*/}/${PSHASH} '
  ;;
esac
export PS1

history='fc -l'
#set -o vi

colorLS

