set fish_greeting

set -x EDITOR nvim

set -x GOPATH /Users/jj/code/go
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

alias vim='nvim'

source /usr/local/opt/asdf/asdf.fish

status --is-interactive; and source (anyenv init -|psub)

starship init fish | source
