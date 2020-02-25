set fish_greeting

set -x EDITOR nvim

set -x GOPATH /Users/jj/code/go
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin

alias vim='nvim'

source /usr/local/opt/asdf/asdf.fish

starship init fish | source
