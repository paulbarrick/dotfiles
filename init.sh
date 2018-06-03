#~/bin/bash

# install software
brew install zsh tmux neovim python3 ag reattach-to-user-namespace
brew tap caskroom/cask
brew cask install iterm2

# update neovim to have plugin and python support
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip3 install neovim

# install fonts
brew tap caskroom/fonts
brew cask install font-fira-code

# set zsh as default shell
chsh -s /usr/local/bin/zsh

# remove any existing configs
rm -rf ~/.vim ~/.vimrc ~/.zshrc ~/.tmux ~/.tmux.cong ~/.config/nvim 2> /dev/null

#create neovim directories
mkdir -p ~/.config ~/.config/nvim

#symlinks
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/vimrc ~/.config/nvim/init.vim


