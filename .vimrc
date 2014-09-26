set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
filetype plugin indent on
colorscheme molokai
filetype plugin on 

set paste
set t_Co=256
set mouse=a
set hlsearch 
set encoding=utf-8
set fileencodings=utf-8
set ambiwidth=double
set guifont=Monaco:h15
set guifontwide=Monaco:h15
set number
set nofoldenable

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

highlight OverLength ctermbg=red ctermfg=white guibg=#592929 
match OverLength /\%81v.\+/

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"pymode quickfix
let g:pymode_lint_cwindow = 0

" nerdcommenter
let mapleader=","  

" copy to clipboard
nmap <F3> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F3> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nmap <F4> :.w !pbcopy<CR><CR>
vmap <F4> :w !pbcopy<CR><CR>

" NERDTree (better file browser) toggle
map <F1> :NERDTreeToggle<CR>
let NERDTreeMouseMode=2

" intendline
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'

"tagbar
let g:tagbar_ctags_bin ='/usr/bin/ctags'
nmap <F2> :TagbarToggle<CR>

"YCM
"let g:ycm_key_list_select_completion = ['<Down>', '<C-N>']
"let g:ycm_register_as_syntastic_checker = 1
"let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']
"let g:ycm_collect_identifiers_from_tags_files = 1
"nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
"Vundle

set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'Rip-Rip/clang_complete'
Bundle 'ervandew/supertab'
Bundle 'honza/vim-snippets'
Bundle 'gmarik/vundle'
Bundle 'Flowerowl/ici.vim'
Bundle 'vim-scripts/taglist.vim'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'tpope/vim-surround'
Bundle 'Yggdroot/indentLine'
Bundle 'scrooloose/nerdcommenter'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle "mattn/emmet-vim"
Bundle "mileszs/ack.vim"
Bundle "tpope/vim-markdown"
Bundle "suan/vim-instant-markdown"
Bundle "davidhalter/jedi"
Bundle 'kien/ctrlp.vim'
Bundle 'sjl/gundo.vim'
Bundle 'klen/python-mode'
"Bundle 'Valloric/ListToggle'
"Bundle 'SirVer/ultisnips'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 't9md/vim-quickhl'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdcommenter'
Bundle 'majutsushi/tagbar'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'vcscommand.vim'
Bundle 'ShowPairs'
Bundle 'SudoEdit.vim'
Bundle 'EasyGrep'
"Bundle 'VOoM'
"Bundle 'sukima/xmledit'

"powerline{
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'fancy'
let Powerline_symbols = 'compatible' 
"}


"Rainbow_parenteses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


"CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

"sudo write
command -nargs=? Sudow :w !sudo tee % > /dev/null
