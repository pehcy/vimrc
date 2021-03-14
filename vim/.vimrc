" ---------------------
"  /\   /(_)_ __ ___  
"  \ \ / / | '_ ` _ \ 
"   \ V /| | | | | | |
"    \_/ |_|_| |_| |_|
" ---------------------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Vim color themes
Plugin 'ParamagicDev/vim-medic_chalk'
Plugin 'ciaranm/inkpot'
Plugin 'jaredgorski/SpaceCamp'

" You complete me
Plugin 'Valloric/YouCompleteMe'

" Nerdtree
Plugin 'preservim/nerdtree'

" Start NERDTree and put the cursor back in the other window
autocmd VimEnter * NERDTree | wincmd p

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'lervag/vimtex'

" JSX React plugins
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'styled-components/vim-styled-components', { 'branch': 'main' }
Plugin 'jparise/vim-graphql'

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" CoC extensions
Plugin 'neoclide/coc.nvim', { 'branch': 'release' }
let g:coc_global_extensions = ['coc-tsserver']

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:tex_flavor = "latex"
let g:Tex_CompileRule_dvi = 'latex -interaction=nonstopmode -file-line-error-style $*'
let g:Tex_CompileRule_pdf = 'pdflatex -shell-escape -interaction=nonstopmode -file-line-error-style $*'

let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_DefaultTargetFormat = 'pdf'

" Set line number
set number
" On pressing tab, insert 2 spaces
set expandtab
" Show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

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

" colorscheme inkpot
colorscheme spacecamp
hi Normal guibg=NONE ctermbg=NONE
