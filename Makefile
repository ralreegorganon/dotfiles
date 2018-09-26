all:
	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmux.conf ~/.tmux.conf
	[ -f ~/.slate.js ] || ln -s $(PWD)/slate.js ~/.slate.js
	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc
	[ -f ~/.hammerspoon/init.lua ] || ln -s $(PWD)/hammerspoon-init.lua ~/.hammerspoon/init.lua
	[ -f ~/.hammerspoon/modules ] || ln -s $(PWD)/hammerspoon-modules ~/.hammerspoon/modules

clean:
	[ -f ~/.vimrc ] || rm ~/.vimrc
	[ -f ~/.gitconfig ] || rm ~/.gitconfig
	[ -f ~/.tmux.conf ] || rm ~/.tmux.conf
	[ -f ~/.slate.js ] || rm ~/.slate.js
	[ -f ~/.zshrc ] || rm ~/.zshrc
	[ -f ~/.hammerspoon/init.lua ] || rm ~/.hammerspoon/init.lua
	[ -f ~/.hammerspoon/modules ] || rm ~/.hammerspoon/modules