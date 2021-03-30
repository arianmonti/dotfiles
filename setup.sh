sudo dnf install zsh vim ipython go gnome_tweaks neovim python3-neovim

cd ~

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# antigen
curl -L git.io/antigen > ~/antigen.zsh

# zsh themes
cp ~/dotfiles/zsh/.zshrc ~/.zshrc && cp ~/dotfiles/zsh/aban.zsh-theme ~/.oh-my-zsh/themes/

# add vim colors
mkdir --parents .vim/pack/colors/start/


cd .vim/pack/colors/start/

git clone https://github.com/dracula/vim.git
git clone https://github.com/doums/darcula.git
git clone https://github.com/arcticicestudio/nord-vim.git
git clone https://github.com/joshdick/onedark.vim.git

cd ~
# neovim and vim setting

cp ~/dotfiles/vim/.vimrc ~/.vimrc
cp ~/dotfiles/nvim/init.vim ~/.config/nvim/

# Dash to dock setting

cp ~/dotfiles/stylesheet.css ~/.local/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com/
