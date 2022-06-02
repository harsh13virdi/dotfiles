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
alias updatesite='rsync -vrP ~/documents/HTML/aroaduntraveled/* root@aroaduntraveled.com:/var/www/aroaduntraveled/'

#Prompt Appearance
PS1='[\u@\h \W]\$ '

#Exporting Standard variables
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache

#Exporting Path
export PATH="$HOME/scripts/:$HOME/.local/bin/:$PATH"

#Default Text Editor
export EDITOR=vim

#Exporting other Env Var
export HISTFILE="${XDG_STATE_HOME}"/bash/history
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export WINEPREFIX="$XDG_DATA_HOME"/wine
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

wal -R && clear

#Starship Prompt
eval "$(starship init bash)"

pfetch
