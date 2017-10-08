# .profile
# This .profile should work for either bash of ksh (and probably other more
# modern Bourne shells).  It is may not work on a true Bourne shell.

#umask 022

# On bash we need to include .bashrc ourselves...
case "$SHELL" in
*/bash)
  if [[ -f ~/.bashrc ]]; then
    . ~/.bashrc
  fi
  ;;
*/ksh)
  if [[ -f ~/.kshrc ]]; then
    . ~/.kshrc
  fi
  ;;
esac

