# HISTSIZE and HISTFILESIZE must be changed in .bashrc to:
#   HISTSIZE=1000000
#   HISTFILESIZE=20000000

alias gs="git status --short --branch"
alias gl="git log2"
alias gb="git branch2"
alias gba="git branch2-all"
alias gm="git checkout master"
alias gp="git pull"
alias cl="clean_terminal.sh"
alias oman="helpmanual.py"
# alias python="python3"
#alias gromit="gromit-mpx"
#alias say="spd-say"

alias machine="docker-machine"
alias compose="docker-compose"
#alias dps="docker ps --format \"table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.Image}}\""
#alias dstats="docker stats --format=\"table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.MemPerc}}\t{{.NetIO}}\t{{.BlockIO}}\t{{.PIDs}}\""

# from http://tipsonubuntu.com/2018/11/12/make-app-window-transparent-ubuntu-18-04-18-10/
alias transparent="sh -c 'xprop -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY $(printf 0x%x $((0xffffffff * 60 / 100)))'"
alias opaque="sh -c 'xprop -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY $(printf 0x%x $((0xffffffff * 100 / 100)))'"

docker() {
    if [[ $@ == "ps" ]]; then
        command docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.Image}}"
    elif [[ $@ == "stats" ]]; then
        command docker stats --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.MemPerc}}\t{{.NetIO}}\t{{.BlockIO}}\t{{.PIDs}}"
    else
        command docker "$@"
    fi
}

gromit-start() {
    gromit & sleep 1; gromit -t
}

# alias ccat="pygmentize -g"
# alias ccat='ccat.sh'
alias curlchrome="curl -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'"

export hex="⬢"

export PATH="$HOME~/.local/bin:~/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.cargo/env:$PATH"
export PATH="$HOME/.config/yarn/global/node_modules/.bin/:$PATH"
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

alias ps1="ps -uf -g"

mkdin() {
    mkdir -p $1
    cd $1
}

export PAPERTRAIL_API_TOKEN='---'
papertrail-systems() {
    curl -s -H "X-Papertrail-Token: $PAPERTRAIL_API_TOKEN" https://papertrailapp.com/api/v1/systems.json | python -m json.tool | grep '"name":' | sed -r 's/ +"name": "(.*)",/\1/'
}

export DJ_DEBUG="TRUE"
export BROWSER="none"
export PGPASSWORD=---
export DOCKER_ID_USER='---'
export GPG_TTY=$(tty)
export TINIFY_KEY='---'

HISTTIMEFORMAT="%y-%m-%d %T "
# export HISTFILE=~/.bash_history_long
# PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
export NETLIFY='---'
export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"

#preexec () {
#  export TIC=`date +%s.%N`
#}
#preexec_invoke_exec () {
#    local this_command=`HISTTIMEFORMAT= history 1 | sed -e "s/^[ ]*[0-9]*[ ]*//"`;
#    preexec "$this_command"
#}

_before () {
    export TIC=`tic`
}
trap '_before' DEBUG
export PS1='${PSPREFIX}\W $? `toc $TIC` ➤  '

# export LANG='en_US.UTF-8'
# export LANGUAGE='en_US:en'
export PY_DEVTOOLS_HIGHLIGHT=true
alias bat="bat -p"
export BAT_PAGER="-"
export EDITOR=vim

# increase the file descriptor (default is 1024)
ulimit -n 4096

eval "$(_DONK_COMPLETE=source donk --completion-script)"

export RELAY_KEY=---
export RELAY_SECRET=---

export GITHUB_USERNAME_TOKEN='---'
