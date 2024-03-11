HISTSIZE=100000
HISTTIMEFORMAT='%F %T $ '
shopt -s histappend mailwarn
HISTCONTROL=ignorespace # would ignore any command preceded by a whitespace

# fancy PS1 prompt
# curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > ~/.bash_git
source ~/.bash_git
PS1='\e[44mHistory: \e[1;36m\!\e[m. It is \e[1;36m\A\e[m. \[\033[01;32m\]\u@\h\[\033[00m\] @branch$(__git_ps1 " (%s)") in directory:\n\[\e[1;32m\]\w\[\033[00m\] \n\[\033[01;32m\]$ \[\033[00m\]'

# FreeBSD: pkg install bash-completion needs this?
[[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]] && \
source /usr/local/share/bash-completion/bash_completion.sh
