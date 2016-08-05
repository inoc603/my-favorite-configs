# Open directory/file in Finder
alias f='open -a Finder'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

# Load autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh  ]] && \
. $(brew --prefix)/etc/profile.d/autojump.sh

# Load iterm2 shell intergration
test -e "${HOME}/.iterm2_shell_integration.zsh" && \
source "${HOME}/.iterm2_shell_integration.zsh"
