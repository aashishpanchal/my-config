# Print name on terminal
figlet Joker | lolcat

# Add: Custom command
alias g='git'
alias cls='clear'
alias del='rm -r'
alias reload='source ~/.bashrc'
alias ls='eza -la --icons' # use exa instead of ls

# Add: oh-my-posh, https://github.com/jandedobbeleer/oh-my-posh
eval "$(oh-my-posh init bash --config ~/.cache/oh-my-posh/themes/space.omp.json)" # load oh-my-posh

# Add: JDK Env
export JAVA_HOME=/opt/openjdk/jdk-17.0.13+11
export PATH=$JAVA_HOME/bin:$PATH

# Add: Android Env
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools