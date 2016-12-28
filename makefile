.PHONY: zsh tmux bin

zsh:
	[ -h ~/.zsh ] && rm -f ~/.zsh
	ln -s `pwd`/zsh ~/.zsh
	if [ -h ~/.zshrc ]; then rm -f ~/.zshrc; fi
	ln -s `pwd`/.zshrc ~/.zshrc

tmux:
	[ -e ./tmux/plugins/tpm ] && rm -rf ./tmux/plugins/tpm
	git clone https://github.com/tmux-plugins/tpm ./tmux/plugins/tpm
	./tmux/plugins/tpm/bin/install_plugins
	[ -h ~/.tmux ] && rm -f ~/.tmux
	ln -s `pwd`/tmux ~/.tmux
	if [ -h ~/.tmux.conf ]; then rm -f ~/.tmux.conf; fi
	ln -s `pwd`/.tmux.conf ~/.tmux.conf
	pip install powerline-status

bin:
	mkdir -p ~/bin
	ln -s `pwd`/bin/* ~/bin

