all:
	[ -f ~/.gitconfig ] || ln -s $(CURDIR)/gitconfig ~/.gitconfig
	[ -f ~/.tmux.conf ] || ln -s $(CURDIR)/tmux.conf ~/.tmux.conf
	[ -f ~/.hammerspoon/init.lua ] || ln -s $(CURDIR)/hammerspoon-init.lua ~/.hammerspoon/init.lua
	[ -f ~/.hammerspoon/modules ] || ln -s $(CURDIR)/hammerspoon-modules ~/.hammerspoon/modules
	[ -f ~/.config/fish ] || ln -s $(CURDIR)/config/fish ~/.config/fish
	[ -f ~/.config/kitty ] || ln -s $(CURDIR)/config/kitty ~/.config/kitty
	[ -f ~/.config/alacritty ] || ln -s $(CURDIR)/config/alacritty ~/.config/alacritty
	[ -f ~/.config/starship.toml ] || ln -s $(CURDIR)/config/starship.toml ~/.config/starship.toml
	[ -f ~/.config/nvim ] || ln -s $(CURDIR)/config/nvim ~/.config/nvim
	[ -f ~/.config/ranger ] || ln -s $(CURDIR)/config/ranger ~/.config/ranger

clean:
	[ -f ~/.gitconfig ] || rm ~/.gitconfig
	[ -f ~/.tmux.conf ] || rm ~/.tmux.conf
	[ -f ~/.hammerspoon/init.lua ] || rm ~/.hammerspoon/init.lua
	[ -f ~/.hammerspoon/modules ] || rm ~/.hammerspoon/modules
	[ -f ~/.config/fish ] || rm ~/.config/fish
	[ -f ~/.config/kitty ] || rm ~/.config/kitty 
	[ -f ~/.config/alacritty ] || rm ~/.config/alacritty
	[ -f ~/.config/starship.toml ] || rm ~/.config/starship.toml
	[ -f ~/.config/nvim ] || rm ~/.config/nvim
	[ -f ~/.config/ranger ] || rm ~/.config/ranger
