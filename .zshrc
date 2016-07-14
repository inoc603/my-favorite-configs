# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ys"
ENABLE_CORRECTION="false"

# load local info like environment variables
source ~/.zshlocal

# zsh plugins
plugins=(git brew docker osx npm)
source $ZSH/oh-my-zsh.sh

# ys theme without user and hostname
PROMPT="
%{$terminfo[bold]$fg[blue]%}#%{$reset_color%} \
%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%}\
${hg_info}\
${git_info}\
 \
%{$fg[white]%}[%*] $exit_code
%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"

# edit zsh config
alias zshconfig="vim ~/.zshrc"

# refresh zsh settings
alias ref='. ~/.zshrc'

# Custom
source ~/.zsh/common.sh
source ~/.zsh/docker.sh
source ~/.zsh/mac.sh
source ~/.zsh/gfw.sh
source ~/.zsh/deps.sh

