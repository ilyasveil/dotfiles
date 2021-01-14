set nocompatible          " vim, not vi
set path+=**              " Path completion with tab
set wildmenu              " Display all options when using path completion
set laststatus=2          " Powerline always visible
set t_Co=256              " 256-color mode
syntax enable             " Syntax highlighting
set number                " Line numbers
filetype plugin indent on " File indenting
set incsearch             " Highlight while typing search
set ignorecase            " Case-insensitive searching
set autoindent            " Auto indents
set tabstop=2             " Tab spacing
set shiftround            " Always in/outdent to tabstop
set expandtab             " Use spaces insead of tabs
set showtabline=2         " Tabline always visible

if (has("termguicolors")) " Tell terminal to use the damn colors!
  set termguicolors
endif

" Add vim-plug if needed and install plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'
Plug 'luochen1990/rainbow'
Plug 'airblade/vim-gitgutter'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
call plug#end()

colorscheme nord " Set after loading theme from plugin

let g:rainbow_active = 1 " Turn on rainbow parentheses
let g:airline_powerline_fonts = 1 " Generate powerline symbols
let g:airline#extensions#tabline#enabled = 1 " Use airline for the tabline
