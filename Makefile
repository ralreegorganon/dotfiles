all:
	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmux.conf ~/.tmux.conf
	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc
	[ -f ~/.hammerspoon/init.lua ] || ln -s $(PWD)/hammerspoon-init.lua ~/.hammerspoon/init.lua
	[ -f ~/.hammerspoon/modules ] || ln -s $(PWD)/hammerspoon-modules ~/.hammerspoon/modules
	[ -f ~/.config/fish ] || ln -s $(PWD)/config/fish ~/.config/fish
	[ -f ~/.config/kitty ] || ln -s $(PWD)/config/kitty ~/.config/kitty 

clean:
	[ -f ~/.vimrc ] || rm ~/.vimrc
	[ -f ~/.gitconfig ] || rm ~/.gitconfig
	[ -f ~/.tmux.conf ] || rm ~/.tmux.conf
	[ -f ~/.zshrc ] || rm ~/.zshrc
	[ -f ~/.hammerspoon/init.lua ] || rm ~/.hammerspoon/init.lua
	[ -f ~/.hammerspoon/modules ] || rm ~/.hammerspoon/modules
	[ -f ~/.config/fish ] || rm ~/.config/fish
	[ -f ~/.config/kitty ] || rm ~/.config/kitty 