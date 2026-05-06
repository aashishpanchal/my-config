# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP="$HOME/.cache/zsh/zcompdump"
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="catppuccin_mocha"
# zsh plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)
# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh
# Shortcuts & Aliases
alias g="git" # Shortcut for git
alias del="rm -rf" # Remove files/folders
alias cls="clear" # Clear terminal
alias reload='source ~/.zshrc' # Reload Zsh config
alias ls="eza --icons --group-directories-first" # Enhanced 'ls' using eza
alias la="ls -a"
alias l="la"
alias vim="nvim"
alias mk="mkdir"
alias ts-node="bunx tsx"
alias python="python3"
alias pip="pip3"
# path sorter
eval "$(zoxide init zsh)"
alias cd="z"
# Android SDK Configuration
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
alias studio="open -a \"Android Studio\""
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
# fnm
FNM_PATH="/opt/homebrew/opt/fnm/bin"
if [ -d "$FNM_PATH" ]; then
  eval "`fnm env`"
fi
# Golang
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
# Flutter/Dart setup
alias flutter="fvm flutter"
alias dart="fvm dart"
# cocopod
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
# Rust / Cargo
. "$HOME/.cargo/env"

