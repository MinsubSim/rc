
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Bash - Vim mode
set -o vi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
