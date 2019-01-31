# allow brew stuff to take precedence
PATH=~/bin:$PATH

PATH=~/scripts:$PATH
PATH=/usr/local/bin:$PATH
PATH=/usr/local/apache/bin/:$PATH
PATH=~/software/phantomjs-2.1.1-macosx/bin/:$PATH

export EDITOR="mvim -v"
set -o emacs

ulimit -n 10000

# Include paths
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig
export CXXFLAGS=-I/usr/local/include 
export LDFLAGS=-L/usr/local/lib

# Make delete delete-right instead of inserting ~
bindkey "^[[3~" delete-char

export CLICOLOR=1

# Misc aliases
alias TODO="find . -type f | xargs fgrep 'TODO'"
alias l="ls"
alias la="ls -a"
alias ll="ls -l"
alias ltr="ls -ltra"
alias vi="mvim -v"
alias vim="vi"

# Git aliases
alias gut="git"
alias s="git status"
alias a="git add --all ."
alias c="git commit -m"
alias co="git checkout"
alias p="git push"
alias d="git diff"

# prompt
fpath=(~/.zsh $fpath)
autoload -U promptinit && promptinit
prompt pure

## vi mode: disabled for now because I got impatient
## show vi mode - credit https://github.com/sindresorhus/pure/wiki
# bindkey -v
# export KEYTIMEOUT=1
# PROMPT='%(?.%F{magenta}.%F{red})${${KEYMAP/vicmd/❮%f}/(main|viins)/❯%f} '
# function zle-line-init zle-keymap-select {
#    zle reset-prompt
#
# }
# zle -N zle-line-init
# zle -N zle-keymap-select

# completion
autoload -U compinit && compinit

# 
# Expansion
# 

# expand camelcase-style dirs
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# misc options
setopt auto_cd

# history
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_verify
setopt inc_append_history
setopt no_hist_allow_clobber
setopt no_hist_beep
setopt share_history
setopt append_history
bindkey "^[[A" history-beginning-search-backward
bindkey '^R' history-incremental-search-backward

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# apps and stuff
# reasonml
# eval $(opam config env)

# zsh-syntax-highlighting
# This plugin must be loaded last - https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
