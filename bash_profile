export PS1='\w `git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'

export LC_ALL="en_US.UTF-8"
export LANG="en_US"

if [ -f /usr/local/share/bash-completion/bash_completion ]; then
    . /usr/local/share/bash-completion/bash_completion
fi

alias ..='cd ..'

function remove_DS_Store()
{
    find . -name '*.DS_Store' -type f -delete
}

function cdf() { 
  cd "`osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)'`"
}

function mkd() {
    mkdir -p "$@" && cd "$@"
}

function fs() {
    if du -b /dev/null > /dev/null 2>&1; then
        local arg=-sbh
    else
        local arg=-sh
    fi
    if [[ -n "$@" ]]; then
        du $arg -- "$@"
    else
        du $arg .[^.]* *
    fi
}

export PATH="$HOME/.cargo/bin:$PATH"
