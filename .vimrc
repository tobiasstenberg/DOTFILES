let mapleader =" "

" basics
    set number relativenumber
    syntax on
    set encoding=utf-8
    set tabstop=2
    set autoindent

" autocompletion
    set wildmode=longest,list,full

" splits
    set splitbelow splitright

" check file in spellcheck
    map <leader>o :setlocal spell! spelllang=en_us<CR>

" run xrdb
    autocmd BufWritePost ~/.Xresources !xrdb %
