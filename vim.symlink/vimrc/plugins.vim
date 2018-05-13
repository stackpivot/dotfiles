" +++++++++++++++++++++++++++++++++++++
" Using my vim plug to manage plugins
" +++++++++++++++++++++++++++++++++++++

call plug#begin('~/.vim/plugged')


" +++++++++++++++++++++++++++++++++++++
" Navigation / File Handling
" +++++++++++++++++++++++++++++++++++++

set rtp+=/usr/bin/fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" enhanced search feature
Plug 'wincent/loupe'

" Draging code in visual mode
Plug 'fisadev/dragvisuals.vim'

" Display vim marks on the numbers bar
" :SignatureToggle to toggle signs
Plug 'kshenoy/vim-signature'


" +++++++++++++++++++++++++++++++++++++
" Coding
" +++++++++++++++++++++++++++++++++++++

Plug 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual

" Switch python virtual env
" :VirtualEnvActivate <tab>
Plug 'unterzicht/vim-virtualenv'

" asyncronous linting
Plug 'w0rp/ale'
let g:ale_statusline_format = ['☀️️ %d', '🕯️ %d', '']

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" +++++++++++++++++++++++++++++++++++++
" Code Navigation
" +++++++++++++++++++++++++++++++++++++
Plug 'brookhong/cscope.vim'
Plug 'ronakg/quickr-cscope.vim'
Plug 'hari-rangarajan/CCTree'



" +++++++++++++++++++++++++++++++++++++
" git plugin
" +++++++++++++++++++++++++++++++++++++
Plug 'tpope/vim-fugitive'

" :Ghistory
Plug 'gregsexton/gitv'

" :GV to open commit browser
Plug 'junegunn/gv.vim'


" +++++++++++++++++++++++++++++++++++++
" Themes and Eye Candy
" +++++++++++++++++++++++++++++++++++++

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" creates zsh theme like vim airline
" :PromptlineSnapshot ~/.shell_prompt.sh airline
" In .zshrc add: source ~/.shell_prompt.sh
Plug 'edkolev/promptline.vim'



" Themes
Plug 'chriskempson/base16-vim'
Plug 'cdmedia/itg_flat_vim'
Plug 'morhetz/gruvbox'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'jonathanfilip/vim-lucius'
Plug 'NLKNguyen/papercolor-theme'



" +++++++++++++++++++++++++++++++++++++
" Misc
" +++++++++++++++++++++++++++++++++++++

Plug 'terryma/vim-multiple-cursors'
Plug 'mbbill/undotree'
Plug 'kien/rainbow_parentheses.vim'

" Markdown
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" vim dictionary, prosa
Plug 'reedes/vim-lexical'


call plug#end()
