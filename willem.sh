#!/usr/bin/env bash

# Install command-line tools using Homebrew.

mkdir -p ${HOME}/Development

cp .vimrc ${HOME}/
cp .gitconfig ${HOME}/
cp .wgetrc ${HOME}/

# completions
brew install zsh-completions
chmod go-w '/usr/local/share'
rm -f ~/.zcompdump

# install prezto
if ! [ -e "${HOME}/.zprezto" ]; then
   git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

# my zsh defaults
mkdir -p ${HOME}/.zsh
cp zsh/completion.zsh ${HOME}/.zsh/completion.zsh
cp zsh/zlogin ${HOME}/.zlogin
cp zsh/zshrc ${HOME}/.zshrc
cp zsh/aliases ${HOME}/.aliases
cp -f zsh/zpreztorc ${HOME}/.zprezto/runcoms/
cp -f zsh/prompt_willem.zsh "${HOME}/.zprezto/modules/prompt/functions/prompt_willem.zsh"
ln -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zpreztorc" ~/.zpreztorc


# manual shit
# install packages manager for sublime
# install "Dracula Color Scheme"
# select dracula in iTerm