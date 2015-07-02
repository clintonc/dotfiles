function! SourceIfExists(path)
  if filereadable(a:path)
    execute 'source ' . fnameescape(a:path)
  endif
endfunction

call SourceIfExists(expand('~/.vim/bundles.vim'))
call SourceIfExists(expand('~/.vim/google.vim'))

let mapleader = " "

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and style
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show line numbers
set number

" Theme
set t_Co=256
set background=dark
if has("gui_running")
  colorscheme base16-default
  set guifont=Inconsolata\ Medium\ 10
else
  colorscheme industry
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default Editing Behavior
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start
set confirm
set modeline modelines=5
set ruler
set showcmd
set wildmenu
if has('mouse')
  set mouse=a
endif

" In the command line, use Emacs-like editing.
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>

nmap <PageDown> :tabn<CR>
nmap <PageUp> :tabp<CR>
nmap <C-n> :tabnew<CR>

inoremap jk <Esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When searching for a lowercase string, ignore case in the results. For a
" particular search, use \C to force a case-sensitive search.
set incsearch ignorecase smartcase
set laststatus=2

" Indentation and spacing"{{{
set textwidth=80
set ts=2
set shiftwidth=2
set expandtab
set autoindent " Indent comes from previous line

" Remove blank space from the end of every line.
autocmd BufWritePre * :%s/\s\+$//e

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Convenience functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Diff a file side-by-side with its disk version
if !exists(":DiffOrig")
  command DiffOrig vert new | set buftype=nofile | read # | 0d_ | diffthis | wincmd p | diffthis
endif

