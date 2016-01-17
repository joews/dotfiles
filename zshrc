# allow brew stuff to take precedence
PATH=~/bin:$PATH

PATH=~/scripts:$PATH
PATH=/usr/local/bin:$PATH
PATH=/usr/local/apache/bin/:$PATH

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

# completion
autoload -U compinit && compinit

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

export NVM_DIR="/Users/joe/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#nvm use 0.10
