source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# not sure if this works but we'll see
# https://www.reddit.com/r/swaywm/comments/187ghvs/swaysock_errors/
# https://fishshell.com/docs/current/language.html
#if test -n "$TMUX"
#    # inside tmux, we don't know if Sway got restarted
#    set -gx SWAYSOCK "$XDG_RUNTIME_DIR/sway-ipc.$UID.$(pgrep -x sway).sock"
#    swaymsg $args
#end

# ADD PATHS HERE
fish_add_path "/usr/lib/virtiofsd"
fish_add_path "/home/e/.lmstudio/bin"

# envs
set -gx JUPYTERLAB_DIR $HOME/.local/share/jupyter/lab

set -gx EDITOR "nvim"

# overwrite aliases

# Vim to Neovim
alias vi="nvim"
alias vim="nvim"

# Emacs
alias enw="emacs -nw"
alias e="emacs"

# Github Aliases
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit"
alias gcm="git commit -m"
alias gp="git push"

# Tmux Aliases
alias t="tmux"
alias ta="t a -t"
alias tls="t ls"
alias tn="t new -t"

# Added by LM Studio CLI (lms)
#set -gx PATH $PATH /home/e/.lmstudio/bin
