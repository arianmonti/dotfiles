install: packages zsh vim nvim gnome-shit i3-shit

packages:
	@sudo dnf install zsh vim ipython go gnome_tweaks neovim python3-neovim alacritty kitty i3-gaps i3lock i3status maim ranger ncmcpp dunst poly bar autoconf automake cairo-devel fontconfig gcc libev-devel libjpeg-turbo-devel libXinerama libxkbcommon-devel libxkbcommon-x11-devel libXrandr pam-devel pkgconf xcb-util-image-devel xcb-util-xrm-devel rofi

zsh:
	# oh-my-zsh
	@sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	# antigen
	@curl -L git.io/antigen > ~/antigen.zsh

	# zsh themes
	@cp ~/dotfiles/zsh/.zshrc ~/.zshrc
	@cp ~/dotfiles/zsh/aban.zsh-theme ~/.oh-my-zsh/themes/

vim:
	# add vim colors
	@mkdir --parents .vim/pack/colors/start/
	
	
	@cd .vim/pack/colors/start/
	
	@git clone https://github.com/dracula/vim.git
	@git clone https://github.com/doums/darcula.git
	@git clone https://github.com/arcticicestudio/nord-vim.git
	@git clone https://github.com/joshdick/onedark.vim.git
	
	@cp ~

nvim:
	# neovim and vim setting
	@cp ~/dotfiles/vim/.vimrc ~/.vimrc
	@cp ~/dotfiles/nvim/init.vim ~/.config/nvim/

gnome-shit:
	@wget -c https://b2n.ir/r55754 # Juno Ocean
	@wget -c https://b2n.ir/r61643 # Papirus icon
	
	@tar -xvf Juno-ocean.tar.xz
	@tar -xzvf papirus-icon-theme-master.tar.gz
	
	@sudo cp -r Juno-ocean /usr/share/themes/
	@sudo cp -r papirus-icon-theme-master /usr/share/icons/


i3-shit:
	@cp -r ~/dotfiles/dunst/ ~/.config/
	@cp -r ~/dotfiles/polybar/ ~/.config/
	@cp -r ~/dotfiles/i3 ~/.config/
	@cp -r ~/dotfiles/alacritty ~/.config/

fonts:
	@sudo cp -r ~/dotfiles/fonts/vazir-font-v27.0.3 /usr/share/fonts/
	@sudo cp -r ~/dotfiles/fonts/sahel-font-v3.4.0 /usr/share/fonts/
	@sudo cp -r ~/dotfiles/fonts/monaco-cufonfonts /usr/share/fonts/
	@sudo cp -r ~/dotfiles/fonts/San-Francisco /usr/share/fonts/
	@git clone https://github.com/stark/siji && sh siji/install.sh

dash-shit:
	# Dash to dock setting
	
	@cp ~/dotfiles/stylesheet.css ~/.local/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com/

