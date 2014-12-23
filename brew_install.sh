# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


export FC="/usr/local/bin/gfortran"

# Update homebrew recipes
brew update
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install grep

brew tap homebrew/science
brew tap thoughtbot/formulae

binaries=(
git
ack
ctags
readline
lcdf-typetools
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
cabal-install
gmp
nginx
node
p7zip
pcre
qt
pyqt
sqlite
tmux
rcm
libiconv
libxml2
mysql
vim
python
saltstack
gnuplot
)

echo "installing binaries"
brew install ${binaries[@]} --without-docs
brew install sphinx --mysql
brew install octave --without-docs --default-fortran-flags

echo "linking apps"
brew linkapps
