# nvim-min
Minimal neovim config 


### get it
```bash
# remove old cache
rm -rf ~/.local/share/nvim ~/.cache/nvim \
	~/.config/nvim/plugin/packer_compiled.lua 
# remove old config
rm -rf ~/.config/nvim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git clone https://github.com/vadxx/nvim.git ~/.config/nvim
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```
