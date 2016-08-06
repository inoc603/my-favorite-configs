.PHONY: zsh tmux bin

zsh:
	if [ -h ~/.zsh ]; then rm -f ~/.zsh; fi
	ln -s `pwd`/zsh ~/.zsh
	if [ -h ~/.zshrc ]; then rm -f ~/.zshrc; fi
	ln -s `pwd`/.zshrc ~/.zshrc

tmux:
	git clone https://github.com/tmux-plugins/tpm ./tmux/plugins/tpm
	./tmux/plugins/tpm/bin/install_plugins
	if [ -h ~/.tmux ]; then rm -f ~/.tmux; fi
	ln -s `pwd`/tmux ~/.tmux
	if [ -h ~/.tmux.conf ]; then rm -f ~/.tmux.conf; fi
	ln -s `pwd`/.tmux.conf ~/.tmux.conf
	pip install powerline-status

bin:
	mkdir -p ~/bin
	ln -s `pwd`/bin/* ~/bin

