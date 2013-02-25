# ============================================================================
# = hardolaf's_.bashrc                                                       =
# ============================================================================
#
# TABLE OF CONTENTS
# 1. path
# 2. aliases
# 3. colors

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# ============================================================================
# = path                                                                     =
# ============================================================================
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# ============================================================================
# = aliases                                                                  =
# ============================================================================
alias ls='ls --color=auto'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# =============================================================================
# = Colors                                                                    =
# =============================================================================
red="\[\e[0;33m\]"
yellow="\[\e[0;31m\]"

if [ `id -u` -eq "0" ]; then
	root="${yellow}"
else
	root="${red}"
fi

PS1="\[\e[0;37m\]┌─[${root}\u\[\e[0;37m\]][\[\e[0;96m\]\h\[\e[0;37m\]][\[\e[0;32m\]\w\[\e[0;37m\]]\n\[\e[0;37m\]└──╼ \[\e[0m\]"
PS2="╾──╼ "
