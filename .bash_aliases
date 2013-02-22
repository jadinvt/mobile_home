#  Customize BASH PS1 prompt to show current GIT repository and branch.
#  by Mike Stewart - http://MediaDoneRight.com

#  SETUP CONSTANTS
#  Bunch-o-predefined colors.  Makes reading code easier than escape sequences.
#  I don't remember where I found this.  o_O
host=`hostname -s`
case "$host" in
    'astdc-rpt1d')
        HostAlias='icrs-dev' ;;
    'astdc-rpt1s')
        HostAlias='icrs-stg' ;;
    'astdc-rpt2p')
        HostAlias='icrs-prd' ;;
    'astdc-extweb02p')
        HostAlias='WA' ;;
    'astdc-www01s')
        HostAlias='CO' ;;
    'astdc-www02s')
        HostAlias='ID' ;;
    'astdc-db01s')
        HostAlias='NM' ;;
    'astdc-db01p')
        HostAlias='MS' ;;
    'astdc-www03p')
        HostAlias='NV' ;;
    'astdc-extdb02p')
        HostAlias='OR' ;;
    'astdc-intweb03p')
        HostAlias='KS' ;;
    'astdc-util04d')
        HostAlias='OH' ;;
    'astdc-intweb02d')
        HostAlias='RI' ;;
    'astdc-comms-media-dev')
        HostAlias='media-dev' ;;
    'astdc-comms-cache-dev')
        HostAlias='cache-dev' ;;
    'astdc-comms-web-dev')
        HostAlias='web-dev' ;;
    'astdc-comms-db-dev')
        HostAlias='db-dev' ;;
    'astdc-comms-util-dev')
        HostAlias='util-dev' ;;

    'astdc-commed01s')
        HostAlias='media1-stage' ;;
    'astdc-commem01s')
        HostAlias='cache1-stage' ;;
    'astdc-comweb01s')
        HostAlias='web1-stage' ;;
    'astdc-commsq01s')
        HostAlias='db1-stage' ;;
    'astdc-comutl01s')
        HostAlias='util1-stage' ;;
    'astdc-comprx01s')
        HostAlias='proxy1-stage' ;;

    'astdc-commed02s')
        HostAlias='media2-stage' ;;
    'astdc-commem02s')
        HostAlias='cache2-stage' ;;
    'astdc-comweb02s')
        HostAlias='web2-stage' ;;
    'astdc-commsq02s')
        HostAlias='db2-stage' ;;
    'astdc-comutl02s')
        HostAlias='util2-stage' ;;
    'astdc-comprx02s')
        HostAlias='proxy2-stage' ;;

    'astdc-commed01p')
        HostAlias='media1-prod' ;;
    'astdc-commem01p')
        HostAlias='cache1-prod' ;;
    'astdc-comweb01p')
        HostAlias='web1-prod' ;;
    'astdc-commsq01p')
        HostAlias='db1-prod' ;;
    'astdc-comutl01p')
        HostAlias='util1-prod' ;;
    'astdc-comprx01p')
        HostAlias='proxy1-prod' ;;

    'astdc-commed02p')
        HostAlias='media2-prod' ;;
    'astdc-commem02p')
        HostAlias='cache2-prod' ;;
    'astdc-comweb02p')
        HostAlias='web2-prod' ;;
    'astdc-commsq02p')
        HostAlias='db2-prod' ;;
    'astdc-comutl02p')
        HostAlias='util2-prod' ;;
    'astdc-comprx02p')
        HostAlias='proxy2-prod' ;;
    *)
	HostAlias=$host;;
esac

# Reset
Color_Off="\[\033[0m\]"       # Text Reset

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
White="\[\033[0;37m\]"        # White
# Bold
BBlack="\[\033[1;30m\]"       # Black
BRed="\[\033[1;31m\]"         # Red
BGreen="\[\033[1;32m\]"       # Green
BYellow="\[\033[1;33m\]"      # Yellow
BBlue="\[\033[1;34m\]"        # Blue
BPurple="\[\033[1;35m\]"      # Purple
BCyan="\[\033[1;36m\]"        # Cyan
BWhite="\[\033[1;37m\]"       # White

# Underline
UBlack="\[\033[4;30m\]"       # Black
URed="\[\033[4;31m\]"         # Red
UGreen="\[\033[4;32m\]"       # Green
UYellow="\[\033[4;33m\]"      # Yellow
UBlue="\[\033[4;34m\]"        # Blue
UPurple="\[\033[4;35m\]"      # Purple
UCyan="\[\033[4;36m\]"        # Cyan
UWhite="\[\033[4;37m\]"       # White

# Background
On_Black="\[\033[40m\]"       # Black
On_Red="\[\033[41m\]"         # Red
On_Green="\[\033[42m\]"       # Green
On_Yellow="\[\033[43m\]"      # Yellow
On_Blue="\[\033[44m\]"        # Blue
On_Purple="\[\033[45m\]"      # Purple
On_Cyan="\[\033[46m\]"        # Cyan
On_White="\[\033[47m\]"       # White

# High Intensty
IBlack="\[\033[0;90m\]"       # Black
IRed="\[\033[0;91m\]"         # Red
IGreen="\[\033[0;92m\]"       # Green
IYellow="\[\033[0;93m\]"      # Yellow
IBlue="\[\033[0;94m\]"        # Blue
IPurple="\[\033[0;95m\]"      # Purple
ICyan="\[\033[0;96m\]"        # Cyan
IWhite="\[\033[0;97m\]"       # White

# Bold High Intensty
BIBlack="\[\033[1;90m\]"      # Black
BIRed="\[\033[1;91m\]"        # Red
BIGreen="\[\033[1;92m\]"      # Green
BIYellow="\[\033[1;93m\]"     # Yellow
BIBlue="\[\033[1;94m\]"       # Blue
BIPurple="\[\033[1;95m\]"     # Purple
BICyan="\[\033[1;96m\]"       # Cyan
BIWhite="\[\033[1;97m\]"      # White

# High Intensty backgrounds
On_IBlack="\[\033[0;100m\]"   # Black
On_IRed="\[\033[0;101m\]"     # Red
On_IGreen="\[\033[0;102m\]"   # Green
On_IYellow="\[\033[0;103m\]"  # Yellow
On_IBlue="\[\033[0;104m\]"    # Blue
On_IPurple="\[\033[10;95m\]"  # Purple
On_ICyan="\[\033[0;106m\]"    # Cyan
On_IWhite="\[\033[0;107m\]"   # White

# Various variables you might want for your PS1 prompt instead
HostLong="\H"
HostShort="\h"
User="\u"

Time12h="\T"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"


__git_ps1 () 
{ 
        if [ $1 ]; then
            format=$1;
        else    
            format=" (%s)";
        fi
        local b="$(git symbolic-ref HEAD 2>/dev/null)";
            if [ -n "$b" ]; then
                        printf $format "${b##refs/heads/}";
                            fi
}

# This PS1 snippet was adopted from code for MAC/BSD I saw from: http://allancraig.net/index.php?option=com_content&view=article&id=108:ps1-export-command-for-git&catid=45:general&Itemid=96
# I tweaked it to work on UBUNTU 11.04 & 11.10 plus made it mo' better

export PS1=$Color_Off'$(git branch &>/dev/null;\
        if [ $? -eq 0 ]; then \
        git_prompt=$(__git_ps1 "%s")
        echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
        if [ "$?" -eq "0" ]; then \
# @4 - Clean repository - nothing to commit
        echo "'$Green'"\(${git_prompt:0:15}\);\
        else \
# @5 - Changes to working tree
        echo "'$IRed'"\{${git_prompt:0:15}\};\
        fi) '$BYellow$PathShort$Color_Off' ";\
        else \
# @2 - Prompt when not in GIT repo
        echo " '$Yellow$PathShort$Color_Off' "; \
            fi)'$NewLine$BBlue$User$BGreen@$BBlue$HostAlias$IWhite\$\ 
# Set terminal text color
export PS1="$PS1\[\033[1;32m\]"
#export PS1='\[\033[01;31m\]\w\[\033[00m\]\n${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\u\[\033[01;32m\]@\[\033[01;34m\]\h\[\033[00m\]\$ '

alias config='git --git-dir=/home/jadavis/.config.git/ --work-tree=/home/jadavis'
