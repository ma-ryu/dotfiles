if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
set -gx GOPATH $HOME/go
set -gx PATH $PATH $GOPATH/bin

set fish_greeting

alias bat='batcat'

#peco
function fish_user_key_bindings
    bind \cr peco_select_history
end

starship init fish | source
zoxide init fish | source
