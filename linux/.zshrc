# Print name on terminal
figlet Joker Dev | lolcat

# ===== PATH Configuration =====
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

# ===== Oh My Zsh Configuration =====
export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="none"

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
alias ls='eza -la --icons --group-directories-first' # Enhanced 'ls' using eza

# ===== Java Development Kit =====
export JAVA_HOME=/opt/openjdk/jdk-17.0.13+11
export PATH=$JAVA_HOME/bin:$PATH

# ===== Android SDK Configuration =====
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
