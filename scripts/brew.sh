#!/bin/bash

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Taps
brew tap neovim/neovim
brew tap thoughtbot/formulae
brew tap caskroom/cask
brew tap caskroom/versions

# Installs
brew install 'ack'
brew install 'automake'
brew install 'calc'
brew install 'cmake'
brew install 'coreutils'
brew install 'cowsay'
brew install 'ctags'
brew install 'doxygen'
brew install 'editorconfig'
brew install 'fortune'
brew install 'git'
brew install 'git-flow'
brew install 'git-standup'
brew install 'go'
brew install 'grip'
brew install 'iandrewt/tap/gpmdp-remote'
brew install 'ical-buddy'
brew install 'koekeishiya/formulae/kwm'
brew install 'libksba'
brew install 'lua'
brew install 'less'
brew install 'mas'
brew install 'mongodb'
brew install 'mysql'
brew install 'neofetch'
brew install 'neovim/neovim/neovim'
brew install 'perl'
brew install 'python'
brew install 'python3'
brew install 'redis'
brew install 'reattach-to-user-namespace'
brew install 'rcm'
brew install 'ruby'
brew install 'source-highlight'
brew install 'the_silver_searcher'
brew install 'thoughtbot/formulae/rcm'
brew install 'tmux'
brew install 'tomanthony/brews/itermocil'
brew install 'trash'
brew install 'tree'
brew install 'utf8proc'
brew install 'watchman'
brew install 'youtube-dl'

# Casks
brew cask install 'spectacle'
brew cask install 'flux'
brew cask install 'iterm2-nightly'
brew cask install 'sketch'
brew cask install 'slack'
brew cask install 'subtitles'
brew cask install 'vlc'
brew cask install 'spotify'
brew cask install 'telegram'

# Mas Will install my apps from the App Store for me
mas install 497799835         # Xcode (8.2.1)
mas install 425424353         # The Unarchiver (3.11.1)
