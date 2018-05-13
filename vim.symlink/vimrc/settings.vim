set encoding=utf-8

" faster redrawing
set ttyfast
set wrap
set linebreak


" Whitespace stuff
" set nowrap
set tabstop=3
set shiftwidth=3
set softtabstop=3
set expandtab

"set showbreak=↳
" autoload files when changed externally
set autoread

" opening splits right and below feels more natural to me
set splitbelow
set splitright


" ---------------------------------------------------------------------------------------------
" awesome vim functions
" ---------------------------------------------------------------------------------------------

" Show trailing spaces and highlight hard tabs
set list listchars=tab:»·,trail:·

" Strip trailing whitespaces on each save
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" remember line after leaving vim
if has("autocmd")
     au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  endif



" go to git root with :Root
function! s:root()
   let root = systemlist('git rev-parse --show-toplevel')[0]
   if v:shell_error
      echo 'Not in git repo'
      else
         execute 'lcd' root
      echo 'Changed directory to: '.root
   endif
endfunction
command! Root call s:root()


" generate cscope and ctags
function! s:generateTags()
   let root = systemlist('gentags .')[0]
   if v:shell_error
      echo 'error'
   endif
endfunction
command! GenTags call s:generateTags()



" :Branch | Change Branch with fzf
function! s:change_branche(e)
   let res = system("git checkout " . a:e)
   :e!
   :AirlineRefresh
   echom "Changed branch to" . a:e
endfunction

command! Gbranch call fzf#run(
   \ {
   \ 'source': 'git branch' ,
   \ 'sink': function('<sid>change_branche'),
   \ 'options': '-m',
   \ 'down': '20%'
   \ })




" install ag: sudo   pacman -S the_silver_searcher
" FZF fzf
fun! FzfOmniFiles()
   let is_git = system('git status')
   if v:shell_error
      :Files
   else
      :GitFiles --exclude-standard --other
   endif
endfun




" Use vim as hexeditor
augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | %!xxd
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
augroup END


" Use ranger as vim file manager

fun! Ranger()
  let tmpfile = tempname()
  if a:0 > 0 && a:1 != ""
    let dir = a:1
  elseif expand("%")
    let dir = "."
  else
    let dir = expand("%:p:h")
  endif

  exe 'silent !ranger --choosefile='.tmpfile dir
  if filereadable(tmpfile)
    exe 'edit' readfile(tmpfile)[0]
    call delete(tmpfile)
  endif
  redraw!

  let result = 0
  if filereadable(tmpfile)
      silent let result = system('cat '. tmpfile)
  endif
  silent call system('rm -rf ' . tmpfile)
  return result
endfun




"-------------------------------------------------------
" LINTER
"-------------------------------------------------------


" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
" let g:ale_sign_error = '>>'
" let g:ale_sign_warning = '--'
let g:ale_sign_error = '✕'
let g:ale_sign_warning = '⚑'
highlight clear ALEErrorSign
highlight clear ALEWarningSign



