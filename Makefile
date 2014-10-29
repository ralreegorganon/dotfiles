all:
	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmux.conf ~/.tmux.conf
	[ -f ~/.slate ] || ln -s $(PWD)/slate ~/.slate
	[ -f ~/.slate.js ] || ln -s $(PWD)/slate.js ~/.slate.js
	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc

clean:
	[ -f ~/.vimrc ] || rm ~/.vimrc
	[ -f ~/.gitconfig ] || rm ~/.gitconfig
	[ -f ~/.tmux.conf ] || rm ~/.tmux.conf
	[ -f ~/.slate ] || rm ~/.slate
	[ -f ~/.slate.js ] || rm ~/.slate.js
	[ -f ~/.zshrc ] || rm ~/.zshrc
