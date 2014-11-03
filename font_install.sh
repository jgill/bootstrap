#!/usr/bin/env bash

brew tap caskroom/fonts

fonts=(
  font-source-code-pro
  font-open-sans
  font-droid-sans
  font-droid-sans-mono
  font-droid-serif
  font-inconsolata
  font-anonymous-pro
  font-charter
  font-fira-sans
)

echo "installing fonts..."
brew cask install ${fonts[@]}
