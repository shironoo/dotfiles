autoload -U colors && colors
PROMPT="%{$fg_bold[red]%}%n@%m%{$reset_color%}:%{$fg_bold[blue]%}%2~%{$reset_color%}%# "

setopt transient_rprompt
setopt prompt_subst
bindkey -e

eval `gdircolors -b`
zstyle ':completion:*' list-colors di=34 fi=0

export LANG=en_US.UTF-8
export EDITOR=vi
export TERM=xterm-256color

autoload -U compinit
compinit -u
setopt autopushd
setopt pushd_ignore_dups
setopt auto_cd
setopt list_packed
setopt list_types

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt share_history
setopt EXTENDED_HISTORY

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

## load user .zshrc configuration file
setopt complete_aliases
[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine
[ -f ~/.alias ] && source ~/.alias
