UNAME := $(shell uname)

install:
ifeq ($(UNAME), Linux)
endif
ifeq ($(UNAME), Darwin)
	[ -f ~/.hammerspoon/init.lua ] || ln -s $(CURDIR)/hammerspoon-init.lua ~/.hammerspoon/init.lua
	[ -f ~/.hammerspoon/modules ] || ln -s $(CURDIR)/hammerspoon-modules ~/.hammerspoon/modules
endif
	[ -f ~/.gitconfig ] || ln -s $(CURDIR)/gitconfig ~/.gitconfig
	[ -f ~/.gitignore ] || ln -s $(CURDIR)/gitignore ~/.gitignore
	[ -f ~/.tmux.conf ] || ln -s $(CURDIR)/tmux.conf ~/.tmux.conf
	[ -f ~/.config/fish ] || ln -s $(CURDIR)/config/fish ~/.config/fish
	[ -f ~/.config/nvim ] || ln -s $(CURDIR)/config/nvim ~/.config/nvim
	[ -f ~/.config/ranger ] || ln -s $(CURDIR)/config/ranger ~/.config/ranger
	[ -f ~/.config/wezterm ] || ln -s $(CURDIR)/config/wezterm ~/.config/wezterm

clean:
ifeq ($(UNAME), Linux)
endif
ifeq ($(UNAME), Darwin)
	rm -f ~/.hammerspoon/init.lua
	rm -f ~/.hammerspoon/modules
endif
	rm -f ~/.gitconfig
	rm -f ~/.gitignore
	rm -f ~/.tmux.conf
	rm -f ~/.config/fish
	rm -f ~/.config/nvim/lua/user
	rm -f ~/.config/ranger
	rm -f ~/.config/wezterm
