# Joe's dotfiles

## Setup

### zsh

    ❯ ln -s ./zshrc ~/.zshrc

Install Pure prompt

    ❯ brew install pure

Install https://github.com/zsh-users/zsh-syntax-highlighting

    ❯ brew install zsh-syntax-highlighting

### git

     ❯ ln -s ./gitconfig ~/.gitconfig

### Macvim


    ❯ brew install macvim

Install [Vundle](https://github.com/VundleVim/Vundle.vim#quick-start) and install plugins:

    :PluginInstall

Install patched powerline font:

    ❯  wget https://github.com/powerline/fonts/raw/master/Inconsolata/Inconsolata%20for%20Powerline.otf
    open /Inconsolata%20for%20Powerline.otf

Tell iTerm 2 to use the powerline for for non-ASCII characters: Edit profile; Text tab; Set _Non-ASCII Font_ to Inconsolata for Powerline

Enable [JS completion](https://github.com/Valloric/YouCompleteMe#javascript-semantic-completion) for YouCompleteMe.
