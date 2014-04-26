#
# ~/.bashrc
#
umask 0027
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -n "$DISPLAY" && "$TERM" = "xterm" ]] && export TERM=xterm-256color

export EDITOR="/usr/bin/vim"

shopt -s histappend
[[ "${PROMPT_COMMAND}" ]] &&
  PROMPT_COMMAND="$PROMPT_COMMAND;history -a" || PROMPT_COMMAND="history -a"

[[ -f /usr/share/git/completion/git-completion.bash ]] &&
  source /usr/share/git/completion/git-completion.bash

PS1='[\u@\h \W]\$ '

[[ -f ~/.bash_aliases_public ]] && source ~/.bash_aliases_public
[[ -f ~/.bash_aliases_private ]] && source ~/.bash_aliases_private
