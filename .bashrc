#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

#Quality of life changes
shopt -s autocd
set -o vi

#ShortCuts
alias ls='ls --color=auto'
alias l='ls --color=auto -lAh'
alias dotrepo='/usr/bin/git --git-dir=$HOME/gitrepo/dotfiles/ --work-tree=$HOME'
alias dotlazy='/usr/bin/lazygit --git-dir=$HOME/gitrepo/dotfiles/ --work-tree=$HOME'

#Prompt Appearance
PS1='[\u@\h \W]\$ '

#Exporting Path
export PATH="$HOME/scripts/:$HOME/.local/bin/:$PATH"

#Default Text Editor
export EDITOR=vim

#Directories
alias stuff='cd /mnt/MoreStuff'

#Repeated Actions
alias sethdmi='xrandr --output HDMI-0 --mode 1920x1080 -r 143.98 &'
alias setdp='xrandr --output DP-4 --mode 1920x1080 -r 143.98 &'
alias updatevis='tail -n 14 ~/.cache/wal/colors > ~/.config/vis/colors/pywal'

wal -R && clear 

#Starship Prompt
eval "$(starship init bash)"
