# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

brew tap homebrew/science
brew tap thoughtbot/formulae

binaries=(
git
ack
ctags
readline
tree
reattach-to-user-namespace
gnu-sed
graphicsmagick
ec2-api-tools
elixir
erlang
gd
gdbm
rbenv
ruby-build
ghc
nginx
node
p7zip
pcre
qt
pyqt
sphinx
sqlite
tmux
rcm
libiconv
libxml2
mysql
vim
python
)

# having problems with vim for some reason
# vim

echo "installing binaries"
brew install ${binaries[@]}
