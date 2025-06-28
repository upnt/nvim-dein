let s:vimrc = expand("~/.vim")
let s:denops = expand("~/.cache/vim/dvpm/github.com/vim-denops/denops.vim")

if !isdirectory(s:denops)
  execute 'silent! !git clone https://github.com/vim-denops/denops.vim ' .. s:denops
endif

execute 'set runtimepath^=' . substitute(fnamemodify(s:vimrc, ':p') , '[/\\]$', '', '')
execute 'set runtimepath^=' . substitute(fnamemodify(s:denops, ':p') , '[/\\]$', '', '')
