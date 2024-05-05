function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre *.py,*.json,*.txt,*.html :call <SID>StripTrailingWhitespaces()

set tabstop=4 shiftwidth=4 expandtab
set autoindent

syntax on
colorscheme zaibatsu

set wildmode=longest,list,full
set wildmenu

"disable Entering Ex mode. Type visual to go to Normal mode
map Q <Nop>

cnoreabbrev E e
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev wQ wq
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev Set set
cnoreabbrev SEt set
cnoreabbrev Sp    split
cnoreabbrev Spl   split
cnoreabbrev Spli  split
cnoreabbrev Split split

hi MatchParen ctermfg=black
hi MatchParen ctermbg=white
