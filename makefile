
zsh:
	if [ -h ~/.zsh ]; then rm -f ~/.zsh; fi
	ln -s `pwd` ~/.zsh
	if [ -h ~/.zshrc ]; then rm -f ~/.zshrc; fi
	ln -s `pwd`/.zshrc ~/.zshrc
