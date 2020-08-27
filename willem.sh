#!/usr/bin/env bash

# Install command-line tools using Homebrew.

mkdir -p ${HOME}/Development

# don't overwrite by default for SQ.
if ! [ -n "${SQUARE_HOME+1}" ]; then
  cp .gitconfig ${HOME}/
  cp .gitconfig_ignore ${HOME}/
fi

cp .gitconfig_alias ${HOME}/

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
ln -sf "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zpreztorc" ~/.zpreztorc
cp .tmux.conf ~/.tmux.conf
