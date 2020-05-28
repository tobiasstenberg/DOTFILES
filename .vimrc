" basics
    set t_Co=256
    colo dusty
    set background=dark
    set number relativenumber
    syntax on
    set encoding=utf-8
    set tabstop=2 softtabstop=2
		set shiftwidth=2
		set expandtab
		set incsearch
    set smartindent

" undo
		set undodir=~/.vim/undodir
		set undofile

" autocompletion
    set wildmode=longest,list,full

" check file in spellcheck
    map <leader>o :setlocal spell! spelllang=en_us<CR>

" run xrdb
    autocmd BufWritePost ~/.Xresources !xrdb %

" plugins
    call plug#begin('~/.vim/plugged')

    Plug 'jremmen/vim-ripgrep'
    Plug 'vim-utils/vim-man'
    Plug 'https://github.com/ycm-core/YouCompleteMe.git'
    Plug 'mbbill/undotree'

    call plug#end()

    let mapleader =" "

    if executable('rg')
      let g:rg_derive_root='true'
    endif

    let g:netrw_browse_split=2
    let g:netrw_banner=0
    let g:netrw_winsize=25

    noremap <leader>h :wincmd h<CR> 
    noremap <leader>j :wincmd j<CR> 
    noremap <leader>k :wincmd k<CR> 
    noremap <leader>l :wincmd l<CR> 
    noremap <leader>u :UndotreeShow<CR> 
    noremap <leader>pv :wincmd v<bar> :wincmd h<bar> :Ex <bar> :vertical resize 30<CR> 
    noremap <leader>ps :Rg<CR> 

    " YCM
    noremap <silent> <leader>gd :YcmCompleter GoTo<CR>
    noremap <silent> <leader>gf :YcmCompleter FixIt<CR>
