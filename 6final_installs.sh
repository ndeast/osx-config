echo 'Beginning Final Setup'

echo 'Installing Tmux Plugin Manager'
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo 'Installing Powerline Status'
pip install powerline-status

echo 'Installing Powerline Fonts'
cd ~/Desktop
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts

echo 'Installing ZSH Imp Theme'
mkdir -p $ZSH_CUSTOM/themes && curl https://raw.githubusercontent.com/igormp/Imp/master/imp.zsh-theme -L -o $ZSH_CUSTOM/themes/imp.zsh-theme

echo 'Installing ZSH autosuggestions'
git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.zsh/zsh-autosuggestions/"

echo 'Installing ZSH syntax highlighting'
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"

echo 'Installing ZSH history substring search'
git clone https://github.com/zsh-users/zsh-history-substring-search "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-history-substring-search"

echo 'Installing ZSH completions'
git clone https://github.com/zsh-users/zsh-completions "$HOME/.oh-my-zsh/custom/plugins/zsh-completions"

# vim-plug plugin manager
echo "Installing Vim-plug plugin manager into $HOME/.local/share/nvim/site/autoload/plug.vim..."
curl -sfLo "$HOME/.local/share/nvim/site/autoload/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Done"