# ===== PATH Configuration =====
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
# ===== Oh My Zsh Configuration =====
export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="xiong-chiamiov-plus"
# Load Oh My Posh theme for Zsh with the Catppuccin Latte theme
eval "$(oh-my-posh init zsh --config ~/.cache/oh-my-posh/themes/kali.omp.json)"
# ===== Plugins =====
plugins=(
    git                    # Git commands and aliases
    zsh-autosuggestions    # git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    zsh-syntax-highlighting # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
)
# Source Oh My Zsh for loading configuration and plugins
source $ZSH/oh-my-zsh.sh
# ===== Shortcuts & Aliases =====
alias zshconfig="mate ~/.zshrc"           # Open Zsh config in editor
alias ohmyzsh="mate ~/.oh-my-zsh"         # Open Oh My Zsh folder in editor
alias g='git'                             # Shortcut for git
alias del='rm -r'                         # Remove files/folders
alias cls='clear'                         # Clear terminal
alias reload='source ~/.zshrc'            # Reload Zsh config
alias ls='eza -a --icons --group-directories-first' # Enhanced 'ls' using eza
alias bat="batcat"
# path sorter
eval "$(zoxide init zsh)"
alias cd="z"
# Android SDK Configuration
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export DRI_PRIME=1  # Use the discrete GPU (usually 1)
# JDK configurations
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))
# fnm
FNM_PATH="/home/aashish/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
