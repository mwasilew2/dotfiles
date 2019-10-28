set nocompatible              " be iMproved, required
filetype off                  " required



set encoding=utf-8
set autoread
let g:mapleader=" "

"" start with two windows
" au VimEnter * vsplit

""""""""""" clipboard
""" set clipboard=unnamedplus """ couldn't get it to work

""""""""""" spaces/tabs """"""""""""
" Insert spaces when TAB is pressed.
set expandtab

""""""""""" View """""""""""""""""""
set colorcolumn=80
set number
"set cmdheight=2

""""""""""" movement """""""""""""""
nmap <leader>l <C-W>l
nmap <leader>h <C-W>h
nmap <leader>j <C-W>j
nmap <leader>k <C-W>k

""""""""""" Vundle """""""""""""""""

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"""""""""""""""""""""""""""""""""""""

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'xolox/vim-misc'

""""" comments
Plugin 'scrooloose/nerdcommenter' "Comment helper

""""" echodoc
"" Plugin 'Shougo/echodoc.vim'
"" let g:echodoc_enable_at_startup = 1

""""" file navigation
Plugin 'scrooloose/nerdtree' "Filesystem explorer
let g:NERDTreeShowHidden = 1
nmap <leader>nt :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFind<CR>
"" Plugin 'yegappan/mru' "Most recently used files, probably duplicate with denite

""""" fuzzy matching

" use Denite instead? is Denite missing any features that CtrlP has?
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_show_hidden = 1
" nmap <leader>m :CtrlPMixed<CR>|  " search mru + files + buffers
" nmap <leader>b :CtrlPBuffer<CR>|  " search buffers
" nmap <leader>p :CtrlPBuffer<CR>|  " search projects

Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'Shougo/denite.nvim'
Plugin 'Shougo/neomru.vim'
Plugin 'neoclide/denite-extra'

" === Denite shorcuts === "
"   <leader>b - Browser currently open buffers
"   <leader>p - Browse list of files in current project
"   <leader>g - Search current directory for occurences of given term and close window if no results
"   <leader>j - Search current directory for occurences of word under cursor
nmap <leader>b :Denite buffer<CR>
nmap <leader>p :DeniteProjectDir file/rec<CR>
nmap <leader>g :<C-u>Denite grep:. -no-empty<CR>
nmap <leader>w :<C-u>DeniteCursorWord grep:.<CR>
nmap <leader>m :<C-u>Denite file_mru<CR>
nmap <leader>i :<C-u>Denite history<CR>

" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

""""" git
Plugin 'tpope/vim-fugitive' "Git wrapper
Plugin 'Xuyuanp/nerdtree-git-plugin' "NERDTree git extension
Plugin 'airblade/vim-gitgutter' "git status per-line

""""" json
Plugin 'elzr/vim-json'


""""" markdown



"""""""""""""""""""""""""""""""""""""""

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
