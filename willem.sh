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
cp .vimrc ${HOME}/

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

# setup vxcode
code --install-extension init/ginfuru.vscode-jekyll-snippets-0.8.7.vsix
code --install-extension init/rokoroku.vscode-theme-darcula-1.1.0.vsix
code --install-extension init/k--kato.intellij-idea-keybindings-0.2.24.vsix

# manual shit
# install packages manager for sublime
# install "Dracula Color Scheme"
# select dracula in iTerm