sudo pacman -S vim ipython go neovim alacritty kitty i3-gaps i3lock i3status maim ranger dunst polybar rofi

cd ~

bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -L git.io/antigen > ~/antigen.zsh


mkdir ~/aban
cp ~/dotfiles/zsh/aban.zsh-theme ~/aban
cp ~/dotfiles/zsh/.zshrc ~/.zshrc
cp ~/dotfiles/zsh/aban.zsh-theme ~/.oh-my-zsh/themes/

mkdir --parents .vim/pack/colors/start/
	
cd .vim/pack/colors/start/
	
git clone https://github.com/dracula/vim.git
git clone https://github.com/doums/darcula.git
git clone https://github.com/arcticicestudio/nord-vim.git
git clone https://github.com/joshdick/onedark.vim.git
	
cp ~

mkdir ~/.config/nvim/
cp ~/dotfiles/vim/.vimrc ~/.vimrc
cp ~/dotfiles/nvim/init.vim ~/.config/nvim/


cd ~/Downloads/


git clone https://github.com/EliverLara/Juno.git

sudo cp -r Juno /usr/share/theme/

cd ~

cp -r ~/dotfiles/dunst/ ~/.config/
cp -r ~/dotfiles/polybar/ ~/.config/
cp -r ~/dotfiles/i3 ~/.config/
cp -r ~/dotfiles/alacritty ~/.config/

sudo cp -r ~/dotfiles/fonts/vazir-font-v27.0.3 /usr/share/fonts/
sudo cp -r ~/dotfiles/fonts/sahel-font-v3.4.0 /usr/share/fonts/
sudo cp -r ~/dotfiles/fonts/monaco-cufonfonts /usr/share/fonts/
sudo cp -r ~/dotfiles/fonts/San-Francisco /usr/share/fonts/
git clone https://github.com/stark/siji && sh siji/install.sh && bash ./install.sh

cp ~/dotfiles/stylesheet.css /usr/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com/
