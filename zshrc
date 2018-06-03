# colors
autoload colors zsh/terminfo
colors

# prompt
#precmd() { print "" }
#PS1=")"
#RPS1="%{$fg[magenta]%}%20<...<%~%<<%{$reset_color%}"

# auto-start tmux
if [ "$TMUX" = "" ]; then tmux; fi

# auto cd
setopt auto_cd

# type correction
setopt correctall
alias git status='nocorrect git status'

# plugins
if [[ ! -f ~/.antigen.zsh ]]; then
  curl https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > ~/.antigen.zsh
fi
source ~/.antigen.zsh

# syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# auto-complete
antigen bundle zsh-users/zsh-autosuggestions


