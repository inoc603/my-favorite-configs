# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ys"
ENABLE_CORRECTION="false"
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
alias ref='. ~/.bash_profile;. ~/.zshrc'

# Custom
source ./shell/common.sh
source ./shell/docker.sh
source ./shell/mac.sh
source ./shell/gfw.sh

