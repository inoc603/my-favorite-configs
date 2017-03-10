# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export DISABLE_AUTO_TITLE='true'

ZSH_THEME="ys"
ENABLE_CORRECTION="false"
DISABLE_UPDATE_PROMPT=true

# zsh plugins
plugins=(git extract brew docker osx npm zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# ys theme without user and hostname
PROMPT="%{$terminfo[bold]$fg[blue]%}#%{$reset_color%} \
%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%}\
${hg_info}\
${git_info}\
 \
%{$fg[white]%}[%*] $exit_code
%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"

# edit zsh config
alias zshconfig="vim ~/.zshrc"

alias sshconfig="vim ~/.ssh/config"

# refresh zsh settings
alias ref='. ~/.zshrc'

# load local info like environment variables
source ~/.zsh/deps.sh
source ~/.zshlocal

# Custom
source ~/.zsh/common.sh
source ~/.zsh/docker.sh
source ~/.zsh/gfw.sh

if [ `uname` == 'Darwin' ]; then
	source ~/.zsh/mac.sh
fi

