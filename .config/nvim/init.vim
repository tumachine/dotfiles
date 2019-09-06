autocmd BufWritePost $HOME/.config/nvim/plugins.vim  :source $HOME/.config/nvim/plugins.vim
autocmd BufWritePost $HOME/.Xresources !xrdb $HOME/.Xresources

runtime plugins.vim
runtime general.vim
