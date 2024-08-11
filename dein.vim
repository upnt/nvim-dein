"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

let s:toml_dir = stdpath('config')
const dein_toml     = s:toml_dir . '/dein.toml'
const deinlazy_toml = s:toml_dir . '/deinlazy.toml'
const ddc_toml      = s:toml_dir . '/ddc.toml'
const ddu_toml      = s:toml_dir . '/ddu.toml'
const view_toml     = s:toml_dir . '/view.toml'

" Required:
call dein#begin($HOME . '/.cache/dein', [
            \ dein_toml, deinlazy_toml, ddc_toml, ddu_toml, view_toml
            \ ])


" Add or remove your plugins here like this:
call dein#load_toml(dein_toml,     {'lazy': 0})
call dein#load_toml(deinlazy_toml, {'lazy': 1})
call dein#load_toml(ddc_toml,      {'lazy': 1})
call dein#load_toml(ddu_toml,      {'lazy': 1})
call dein#load_toml(view_toml,     {'lazy': 0})

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
