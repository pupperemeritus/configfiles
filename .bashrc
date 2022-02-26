#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export SPICETIFY_INSTALL="/home/pupperemeritus/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"
# exec fish

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/pupperemeritus/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/pupperemeritus/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/pupperemeritus/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/pupperemeritus/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

fortune|cowsay|lolcat


##-----------------------------------------------------
## synth-shell-greeter.sh
#if [ -f /home/pupperemeritus/.config/synth-shell/synth-shell-greeter.sh ] && [ -n "$( echo $- | grep i )" ]; then
#	source /home/pupperemeritus/.config/synth-shell/synth-shell-greeter.sh
#fi

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f /home/pupperemeritus/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/pupperemeritus/.config/synth-shell/synth-shell-prompt.sh
fi

##-----------------------------------------------------
## better-ls
if [ -f /home/pupperemeritus/.config/synth-shell/better-ls.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/pupperemeritus/.config/synth-shell/better-ls.sh
fi

##-----------------------------------------------------
## alias
if [ -f /home/pupperemeritus/.config/synth-shell/alias.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/pupperemeritus/.config/synth-shell/alias.sh
fi

##-----------------------------------------------------
## better-history
if [ -f /home/pupperemeritus/.config/synth-shell/better-history.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/pupperemeritus/.config/synth-shell/better-history.sh
fi
alias  condaspy='conda activate spyder-env'

source /usr/share/doc/find-the-command/ftc.bash

# Aliases
alias dir='dir --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias grep='grep --color=auto'
alias grubup="sudo update-grub"
alias hw='hwinfo --short'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias psmem='ps auxf | sort -nr -k 4'
alias rmpkg="sudo pacman -Rdd"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias upd='/usr/bin/update'
alias vdir='vdir --color=auto'
alias wget='wget -c '

# Help people new to Arch
alias apt-get='man pacman'
alias apt='man pacman'
alias helpme='cht.sh --shell'
alias please='sudo'
alias tb='nc termbin.com 9999'
alias spyderconda='conda activate spyder-env && spyder'
# Cleanup orphanet packages
alias cleanup='sudo pacman -Rns `pacman -Qtdq`'
alias cambright='v412-ctl -d /dev/video0 --set-ctrl=brightness'
