#!/usr/bin/env bash

if brew list | grep 'brew-cask'; then
  echo "brew-cask already installed"
else
  echo "installing brew-cask"
  brew install caskroom/cask/brew-cask
fi

apps=(
  alfred
  google-chrome
  firefox
  thunderbird
  vagrant
  iterm2
  qlprettypatch
  virtualbox
  qlstephen
  quicklook-json
  openoffice
  diffmerge
  textwrangler
  adobe-reader
  sequel-pro
  java
  xquartz
  elm-platform
  tunnelbear
  aptible
)

for i in ${apps[@]}; do
  if brew cask list | grep $i; then
    echo "$i already installed"
  else
    echo "$i not installed ... installing"
    brew cask install --appdir="/Applications" $i
  fi
done

if brew cask alfred status | grep "not linked"; then
  brew cask alfred link
fi
