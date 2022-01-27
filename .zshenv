typeset -U PATH path


export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# export ZSH=$HOME/.config/zsh/.oh-my-zsh/oh-my-zsh.sh
export ZDOTDIR=$HOME/.config/zsh

# Default Apps
export EDITOR="nvim"
export READER="zathura"
export TERMINAL="alacritty"
export WM="bspwm"

path=("$HOME/bin" "/var/lib/pacman/local" "/usr/bin" "$HOME/.config/.aliasrc" "$HOME/scripts" "$HOME/.local/bin" "$HOME/.local/share/fonts" "$path[@]")
export PATH

# Silly pfetch stuff
export PF_INFO="ascii title os shell editor wm host kernel pkgs memory palette"
