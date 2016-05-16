export ARCHFLAGS="-arch x86_64"
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/Users/magnus/code/tools/bin:$PATH
export GOPATH=$HOME/go

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

source /usr/local/opt/chruby/share/chruby/chruby.sh
chruby ruby-2.3.1

source "$HOME/git-completion.bash"
export PROMPT_COMMAND='echo -n -e "\033]0;${PWD##*/}\007"; update_terminal_cwd'

PS1='\W$(__git_ps1 " (%s)")\$ '

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


# KAFKA
export KAFKA_HOME=/usr/local/kafka
export KAFKA=/usr/local/kafka/bin
export KAFKA_CONFIG=/usr/local/kafka/config

#gpg-agent instead of ssh-agent
GPG_TTY=$(tty)
export GPG_TTY
if [ -f "${HOME}/.gpg-agent-info" ]; then
    . "${HOME}/.gpg-agent-info"
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
fi

