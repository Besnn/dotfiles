# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH=/home/besnn/_git/moco-cli:$PATH
export PATH=/home/besnn/scripts/bin:$PATH
export PATH=/home/besnn/Telegram:$PATH
export MANPATH=/usr/local/texlive/2020/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2020/texmf-dist/doc/info:$INFOPATH
#export PATH=/usr/lib/jvm/java-1.11.0-openjdk-amd64:$PATH
export VIMRC=~/.vimrc
export EDITOR=vim

shopt -s expand_aliases
shopt -s checkwinsize
complete -cf sudo
xset r rate 192 35
set -o noclobber

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi
unset rc

_update_ps1() {
    PS1="$(powerline-shell $?)"
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

alias ...="cd ../.."
alias ..="cd .."
alias bc="bc -l"
alias cp="cp -i"                          # confirm before overwriting something
alias df="df -h"                          # human-readable sizes
alias free="free -m"                      # show sizes in MB
alias gtime="cd ~/_git"
alias la="ls -A"
alias ld="ls -lF | grep \/"
alias ll="ls -lah"
alias ls="lsd"
alias more="less"
alias mv="mv -i"
alias np="nano -w PKGBUILD"
alias ogtime="cd ~/_ogit"
alias open="xdg-open"
alias sy="synonym"
alias syu="sudo pacman -Syyu"
alias uptime="uptime -p"
alias v="vim"

bash_extra_dir="$HOME/.bash_extra"
[[ -f "$bash_extra_dir" ]] && . "$bash_extra_dir"
bash_functions_dir="$HOME/.bash_functions"
[[ -f "$bash_functions_dir" ]] && . "$bash_functions_dir"

reload() {
	source $HOME/.bashrc
}

[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"
eval "$(starship init bash)"

