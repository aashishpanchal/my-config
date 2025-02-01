export PATH=$PATH:$HOME/.local/bin
# Shortcuts & Aliases
alias g='git'
alias cls='clear'
alias del='rm -r'
alias reload='source ~/.bashrc'
alias ls='eza -la --icons --group-directories-first' # Enhanced 'ls' using eza
alias bat="batcat"
# path sorter
eval "$(zoxide init bash)"
# Load Oh My Posh theme, https://github.com/jandedobbeleer/oh-my-posh
eval "$(oh-my-posh init bash --config ~/.cache/oh-my-posh/themes/catppuccin_mocha.omp.json)"
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
