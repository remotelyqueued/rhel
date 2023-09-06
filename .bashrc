# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# PS1='\[\033[01;31m\][\u@\h \W]\\$\[\033[00m\] '
# PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
# PS1='\[\033[01;31m\]\u@\h\[\033[01;31m\] \w \$\[\033[00m\] '
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1='\[\033[01;31m\]\u@\h\[\033[01;34m\] \w\[\033[01;32m\]$(parse_git_branch)\[\033[01;31m\] \$\[\033[00m\] '

source /home/ryan/Downloads/rhel9/scripts/ufetch-crux.sh
export VISUAL=nvim
export PAGER=bat

alias ls='ls --color=auto'
alias ip='ip --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
