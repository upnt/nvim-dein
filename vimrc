let s:vimrc = expand("~/.vim")
let s:denops = expand("~/.cache/vim/dvpm/github.com/vim-denops/denops.vim")
let s:telescope = expand("~/.cache/vim/dvpm/github.com/nvim-telescope/telescope.nvim")

if !isdirectory(s:denops)
  execute 'silent! !git clone https://github.com/vim-denops/denops.vim ' .. s:denops
endif

execute 'set runtimepath^=' . substitute(fnamemodify(s:vimrc, ':p') , '[/\\]$', '', '')
execute 'set runtimepath^=' . substitute(fnamemodify(s:denops, ':p') , '[/\\]$', '', '')
execute 'set runtimepath^=' . substitute(fnamemodify(s:telescope, ':p') , '[/\\]$', '', '')

source ~/.vim/config.vim
