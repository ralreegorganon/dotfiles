set fish_greeting

set -x EDITOR nvim

fish_add_path ~/.cargo/bin

abbr --add vim nvim
abbr --add ls eza

status --is-interactive

zoxide init fish | source

mise activate fish | source

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jj/code/google-cloud-sdk/path.fish.inc' ]
    . '/Users/jj/code/google-cloud-sdk/path.fish.inc'
end
