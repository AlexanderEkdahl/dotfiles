export PS1='\w `git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
export EDITOR='subl -w'

export LC_ALL="en_US.UTF-8"
export LANG="en_US"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

export PATH="/usr/local/bin:$PATH"

alias ..='cd ..'
alias .='open .'
alias git='hub'

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh

# heroku
PATH="/usr/local/heroku/bin:$PATH"

remove_DS_Store()
{
    find . -name '*.DS_Store' -type f -delete
}

# cd into whatever is the forefront Finder window.
cdf() {  # short for cdfinder
  cd "`osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)'`"
}

extract()
{
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xvjf $1;;
             *.tar.gz)    tar xvzf $1;;
             *.bz2)       bunzip2 $1;;
             *.rar)       unrar x $1;;
             *.gz)        gunzip $1;;
             *.tar)       tar xvf $1;;
             *.tbz2)      tar xvjf $1;;
             *.tgz)       tar xvzf $1;;
             *.zip)       unzip $1;;
             *.Z)         uncompress $1;;
             *)           echo "'$1' cannot be extracted";;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

# Create a new directory and enter it
function mkd() {
    mkdir -p "$@" && cd "$@"
}

# Determine size of a file or total size of a directory
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

# Start an HTTP server from a directory, optionally specifying the port
function server() {
    local port="${1:-8000}"
    sleep 1 && open "http://localhost:${port}/" &
    # Set the default Content-Type to `text/plain` instead of `application/octet-stream`
    # And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
    python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}

# All the dig info
function digga() {
    dig +nocmd "$1" any +multiline +noall +answer
}
