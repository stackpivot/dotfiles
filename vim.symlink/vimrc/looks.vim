colorscheme PaperColor
set background=light
set nocompatible
let python_highlight_all=1
let g:python_highlight_all=1


" Add line numbers
set number
set cursorline
set relativenumber


" ---------------------------------------------------------------------------------------------
" Airline Config
" ---------------------------------------------------------------------------------------------
"let g:airline_powerline_fonts = 0
"" let g:Powerline_symbols = 'fancy'
""
""set guifont=Sauce\ Code\ Powerline\ Semibold:h11
"set guifont=Source\ Code\ Pro\ for\ Powerline:h11
""  set guifont=Fira\ Mono:h11
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" airline stuff { "
" set noshowmode
" let g:airline_powerline_fonts = 1
" let g:bufferline_echo = 0
" let g:airline#extensions#tabline#show_buffers = 1
" let g:airline#extensions#tabline#enabled = 1
" set fillchars+=stl:\ ,stlnc:\


" set laststatus=2
" set ttimeoutlen=50
" " let g:airline_theme='base16'
" let g:airline_theme='papercolor'

" let g:rbpt_colorpairs = [
"     \ ['brown',       'RoyalBlue3'],
"     \ ['Darkblue',    'SeaGreen3'],
"     \ ['darkgray',    'DarkOrchid3'],
"     \ ['darkgreen',   'firebrick3'],
"     \ ['darkcyan',    'RoyalBlue3'],
"     \ ['darkred',     'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['brown',       'firebrick3'],
"     \ ['gray',        'RoyalBlue3'],
"     \ ['black',       'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['Darkblue',    'firebrick3'],
"     \ ['darkgreen',   'RoyalBlue3'],
"     \ ['darkcyan',    'SeaGreen3'],
"     \ ['darkred',     'DarkOrchid3'],
"     \ ['red',         'firebrick3'],
"     \ ]
" let g:rbpt_max = 16




"let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces




