#!/usr/bin/env bash

brew tap caskroom/fonts

fonts=(
  font-source-code-pro
  font-open-sans
  font-droidsansmono-nerd-font
  font-droidsansmono-nerd-font-mono
  font-inconsolata
  font-anonymous-pro
  font-charter
  font-fira-sans
)

echo "installing fonts..."
brew cask install ${fonts[@]}
