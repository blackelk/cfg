function! StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
    set nomodified
endfunction

augroup StripWhitespace
    autocmd!
    autocmd BufWritePre *.py,*.json,*.sql,*.txt,*.html call StripTrailingWhitespaces()
augroup END

set tabstop=4 shiftwidth=4 expandtab
set autoindent

syntax on
colorscheme zaibatsu

set wildmode=longest,list,full
set wildmenu

set fileformat=unix

"disable Entering Ex mode. Type visual to go to Normal mode
map Q <Nop>

"let them work if I press them before releasing Shift
command E e
command W w
command Q q
command Wq wq
command WQ wq
command Set set
command SEt set
command Sp    split
command Spl   split
command Spli  split
command Split split
"Because of E183: User defined commands must start with an uppercase letter I have to use cnoreabbrev.
"This means if I someday search for wQ it will search for wq, but maybe not in this life.
cnoreabbrev wQ wq


hi MatchParen ctermfg=black
hi MatchParen ctermbg=white

",e <some-file> opens sibling file on this buffer. ,t and ,s do the same but on a new tab/split window"
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
map ,t :tabe <C-R>=expand("%:p:h") . "/" <CR>
map ,s :split <C-R>=expand("%:p:h") . "/" <CR>
