brew install caskroom/cask/brew-cask

apps=(
  alfred
  google-chrome
  qlcolorcode
  appcleaner
  firefox
  thunderbird
  twitter
  vagrant
  iterm2
  qlprettypatch
  virtualbox
  qlstephen
  vlc
  quicklook-json
  skype
  gitx
)

echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}
