# dotfiles

echo 'cloning new dotfiles'
cd ~
git clone https://github.com/ndeast/dotfiles.git

echo 'Backing up Exisiting Dotfiles'

cd ~
mkdir dfbu
cp .zshrc dfbu/.zshrc.backup
cp -rf .zsh dfbu/.zsh.backup/
cp .gitconfig dfbu/.gitconfig.backup
cp .bash_profile dfbu/.bash_profile.backup
cp .tmux.conf dfbu/.tmux.conf.backup

echo 'Removing existing dotfiles'
cd ~
rm .zshrc
rm .gitconfig
rm .bash_profile
rm .tmux.conf

echo 'Linking dotfiles'
ln -s ~/dotfiles/bash_profile ~/.bash_profile
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

#neovim
mkdir -p "$HOME/.config/nvim"
ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim
nvim +PlugInstall +qa

echo 'finished'
