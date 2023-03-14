if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx BROWSER "/mnt/c/Program Files/Google/Chrome/Application/chrome.exe"
set -gx PAGER "less"

set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"

# volta
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# rust
set -gx PATH "$HOME/.cargo/bin:$PATH"

# go
set -gx GOPATH $HOME/go
set -gx PATH $PATH $GOPATH/bin

# direnv
set -gx DIRENV_LOG_FORMAT ""

# openssl
set KERL_CONFIGURE_OPTIONS "--with-ssl=/opt/openssl/1.1.1t"

set fish_greeting

#peco
function fish_user_key_bindings
    bind \cr peco_select_history
end

starship init fish | source
zoxide init fish | source

source ~/.asdf/asdf.fish

eval (direnv hook fish)
