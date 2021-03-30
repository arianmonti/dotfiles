sudo dnf install zsh vim ipython go gnome_tweaks

cd ~

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# antigen
curl -L git.io/antigen > antigen.zsh

cp dotfiles/zsh/.zshrc ~/.zshrc && cp dotfiles/aban.zsh-theme ~/.ohmyzsh/themes/


mkdir --parents .vim/pack/colors/start/


git clone https://github.com/dracula/vim.git
git clone https://github.com/doums/darcula.git
git clone https://github.com/arcticicestudio/nord-vim.git
git clone https://github.com/joshdick/onedark.vim.git

mkdir .config/nvim

cp dotfiles/vim/.vimrc ~/.vimrc
cp dotfiles/nvim/init.vim ~/.config/nvim/


