let s:vimrc = expand("<sfile>:h")
let s:denops = expand("~/.cache/vim/dvpm/github.com/vim-denops/denops.vim")
let g:denops_server_addr = "127.0.0.1:34141"

if !isdirectory(s:denops)
  execute 'silent! !git clone https://github.com/vim-denops/denops.vim ' .. s:denops
endif

execute 'set runtimepath^=' . substitute(fnamemodify(s:vimrc, ':p') , '[/\\]$', '', '')
execute 'set runtimepath^=' . substitute(fnamemodify(s:denops, ':p') , '[/\\]$', '', '')
