# Joe's dotfiles

## Setup

### Sublime

    ❯ ln -s sublime ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/sublime

### Macvim

Install patched powerline font:

    ❯  wget https://github.com/powerline/fonts/raw/master/Inconsolata/Inconsolata%20for%20Powerline.otf
    open /Inconsolata%20for%20Powerline.otf

Tell iTerm 2 to use the powerline for for non-ASCII characters: Edit profile; Text tab; Set _Non-ASCII Font_ to Inconsolata for Powerline

Enable [JS completion](https://github.com/Valloric/YouCompleteMe#javascript-semantic-completion) for YouCompleteMe.

### zsh

Install Pure prompt

     ❯ npm install -g pure 
