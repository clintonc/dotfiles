set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" General editing
Plugin 'Raimondi/delimitMate'
Plugin 'SirVer/ultisnips'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'honza/vim-snippets'

" IDE features
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/JavaScript-Indent'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

" Git smarts
Plugin 'airblade/vim-gitgutter'

" Filetypes
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'elzr/vim-json'

" All hail tpope
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'

" Faster!
Plugin 'Lokaltog/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'sjl/gundo.vim'

" Colors
Plugin 'chriskempson/base16-vim'
Plugin 'xolox/vim-colorscheme-switcher'

" Maktaba!
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

Plugin 'google/vim-syncopate'

" All of your Plugins must be added before the following line
call vundle#end()            " required

call glaive#Install()
Glaive codefmt plugin[mappings]
Glaive syncopate plugin[mappings]
Glaive syncopate change_colorscheme=0
