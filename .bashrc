# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
#
alias wd='ssh webuser@web-dev'
alias cd1='ssh webuser@cache-dev'
alias md='ssh webuser@media-dev'
alias pd='ssh webuser@proxy-dev'
 
alias ws1='ssh webuser@web1-stage'
alias us1='ssh webuser@util1-stage'
alias ds1='ssh webuser@db1-stage'
alias cs1='ssh webuser@cache-stage'
alias ms1='ssh webuser@media-stage'
alias ps1='ssh webuser@proxy-stage'
alias ws2='ssh webuser@web2-stage'
alias us2='ssh webuser@util2-stage'
alias ds2='ssh webuser@db2-stage'
alias cs2='ssh webuser@cache-stage'
alias ms2='ssh webuser@media-stage'
alias ps2='ssh webuser@proxy-stage'
 
alias wp1='ssh webuser@web1-prod'
alias up1='ssh webuser@util1-prod'
alias dp1='ssh webuser@db1-prod'
alias cp1='ssh webuser@cache-prod'
alias mp1='ssh webuser@media-prod'
alias pp1='ssh webuser@proxy-prod'
alias wp2='ssh webuser@web2-prod'
alias up2='ssh webuser@util2-prod'
alias dp2='ssh webuser@db2-prod'
alias cp2='ssh webuser@cache-prod'
alias mp2='ssh webuser@media-prod'
alias pp2='ssh webuser@proxy-prod'


alias oh='ssh jadavis@oh'
alias ri='ssh webuser@ri'
alias or='ssh webuser@or'
alias nv='ssh webuser@nv'
alias wa='ssh webuser@wa'
alias ks='ssh webuser@ks'
alias co='ssh webuser@co'
alias wy='ssh webuser@wy'
alias id='ssh webuser@id'
alias nm='ssh webuser@nm'
alias nc='ssh webuser@nc'
alias icrs='ssh webuser@icrs.dimensional.dev'
alias icrss='ssh webuser@astdc-rpt1s'
alias icrsp='ssh webuser@icrs.dimensional.com'
alias dd='ssh webuser@db-dev'
alias ud='ssh webuser@util-dev'

alias vi='vim'
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
#  Development env vars
export INST_PATH=\/home\/jadavis\/httpd.jadavis
export INST_USER=jadavis
export INST_PORT=30000
export INST_IP=10.81.55.47

export MY_INST=jadavis
export MY_PATH=/home/jadavis/httpd.jadavis
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias vi='vim'
alias oh='ssh jadavis@oh'
alias ri='ssh webuser@ri'
alias or='ssh webuser@or'
alias nv='ssh webuser@nv'
alias wa='ssh webuser@wa'
alias ks='ssh webuser@ks'
alias co='ssh webuser@co'
alias wy='ssh webuser@wy'
alias id='ssh webuser@id'
alias nm='ssh webuser@nm'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
export PERLBREW_BASHRC_VERSION=0.43

[[ -z "$PERLBREW_ROOT" ]] && export PERLBREW_ROOT="$HOME/perl5/perlbrew"
[[ -z "$PERLBREW_HOME" ]] && export PERLBREW_HOME="$HOME/.perlbrew"

if [[ ! -n "$PERLBREW_SKIP_INIT" ]]; then
    if [[ -f "$PERLBREW_HOME/init" ]]; then
        . "$PERLBREW_HOME/init"
    fi
fi

__perlbrew_reinit () {
    if [[ ! -d "$PERLBREW_HOME" ]]; then
        mkdir -p "$PERLBREW_HOME"
    fi

    echo '# DO NOT EDIT THIS FILE' >| "$PERLBREW_HOME/init"
    command perlbrew env $1 >> "$PERLBREW_HOME/init"
    . "$PERLBREW_HOME/init"
    __perlbrew_set_path
}

__perlbrew_set_path () {
    [[ -n $(alias perl 2>/dev/null) ]] && unalias perl 2>/dev/null

    export PATH_WITHOUT_PERLBREW="$(perl -e 'print join ":", grep { index($_, $ENV{PERLBREW_ROOT}) } split/:/,$ENV{PATH};')"

    if [[ -z "$PERLBREW_PATH" ]]; then
        export PERLBREW_PATH="$PERLBREW_ROOT/bin"
    fi

}
__perlbrew_set_path

perlbrew () {
    local exit_status
    local short_option
    export SHELL

    if [[ $1 == -* ]]; then
        short_option=$1
        shift
    else
        short_option=""
    fi

    case $1 in
        (use)
            if [[ -z "$2" ]] ; then
                if [[ -z "$PERLBREW_PERL" ]] ; then
                    echo "Currently using system perl"
                else
                    echo "Currently using $PERLBREW_PERL"
                fi
            else
                code=$(command perlbrew env $2);
                if [ -z "$code" ]; then
                    exit_status=1
                else
                    OLD_IFS=$IFS
                    IFS="$(echo -e "\n\r")"
                    for line in $code; do
                        eval $line
                    done
                    IFS=$OLD_IFS
                    __perlbrew_set_path
                fi
            fi
            ;;

        (switch)
              if [[ -z "$2" ]] ; then
                  command perlbrew switch
              else
                  perlbrew use $2 && __perlbrew_reinit $2
              fi
              ;;

        (off)
            unset PERLBREW_PERL
            eval `perlbrew env`
            __perlbrew_set_path
            echo "perlbrew is turned off."
            ;;

        (switch-off)
            unset PERLBREW_PERL
            __perlbrew_reinit
            echo "perlbrew is switched off."
            ;;

        (*)
            command perlbrew $short_option "$@"
            exit_status=$?
            ;;
    esac
    hash -r
    return ${exit_status:-0}
}
export WORKON_HOME=~/src
source /usr/local/bin/virtualenvwrapper.sh
alias t='todo.sh -d ~/etc/todo.cfg'
export TODO_DIR=~/todo/
complete -F _todo t

