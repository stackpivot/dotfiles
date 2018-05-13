" ++++++++++++++++++++++++++
" General Keybindings
" ++++++++++++++++++++++++++


" remove crapy help
inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>

" turn off normal arrow keys, gotta force those n000bs that copy my dotfiles
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap  <Up>     <nop>
inoremap  <Down>   <nop>
inoremap  <Left>   <nop>
inoremap  <Right>  <nop>



" Fix annoying typo's of WQ, QA and Q
command! WQ wq
command! Wq wq

command! W w
command! Q q

command! QA qa
command! Qa qa
command! Bufmacro bufdo execute "normal @a" | write


" Wrapped lines goes down/up to next row, rather than next line in file.
noremap j gj
noremap k gk

" Just to beginning and end of lines easier. From http://vimbits.com/bits/16
noremap H ^
noremap L $

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" moving between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


noremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>


"I really hate that things don't auto-center
nnoremap G Gzz
nnoremap n nzz
nnoremap N Nzz
nnoremap } }zz
nnoremap { {zz

" buffer
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>




" ++++++++++++++++++++++++++
" Coding Keybindings
" ++++++++++++++++++++++++++

command! MakeTags !ctags -R .

" Folding

" Code folding doc
" zf#j creates a fold from the cursor down # lines.
" zf/string creates a fold from the cursor to string.
" zj moves the cursor to the next fold.
" zk moves the cursor to the previous fold.
" zo opens a fold at the cursor.
" zO opens all folds at the cursor.
" zm increases the foldlevel by one.
" zc will close one fold
" zM closes all open folds.
" zr decreases the foldlevel by one.
" zR decreases the foldlevel to zero -- all folds will be open.
" zd deletes the fold at the cursor.
" zE deletes all folds.
" [z move to start of open fold.
" ]z move to end of open fold.

" saving folds
" augroup AutoSaveFolds
" autocmd!
"    autocmd BufWinLeave * mkview
"    autocmd BufWinEnter * silent loadview
" augroup END

set foldcolumn=2

nnoremap <leader>f0 :set foldlevel=0<CR>
nnoremap <leader>f1 :set foldlevel=1<CR>
nnoremap <leader>f2 :set foldlevel=2<CR>
nnoremap <leader>f3 :set foldlevel=3<CR>
nnoremap <leader>f4 :set foldlevel=4<CR>
nnoremap <leader>f5 :set foldlevel=5<CR>
nnoremap <leader>f6 :set foldlevel=6<CR>
nnoremap <leader>f7 :set foldlevel=7<CR>
nnoremap <leader>f8 :set foldlevel=8<CR>
nnoremap <leader>f9 :set foldlevel=9<CR>



" TODO
"retab everything
 noremap <leader>rt :set expandtab<CR>:retab<CR>


" select all
map <Leader>a ggVG


" open last buffer
noremap <Leader><Leader> <C-^>


" nnoremap <C-m> :MaximizerToggle<CR>
nnoremap <leader>hl :set hlsearch!<CR>


" configure search
set hlsearch
" nnoremap <CR> :nohlsearch<CR><CR>
noremap <F3> :set hlsearch! hlsearch?<CR>

" clear search highlight
noremap <silent><Leader>/ :nohls<CR>


" nicer incrementration
nnoremap + <C-a>
nnoremap - <C-x>

" remap Undo
nnoremap U <C-r>
nnoremap <F1> :UndotreeToggle<cr>



" ++++++++++++++++++++++++++
" Git  Keybindings
" ++++++++++++++++++++++++++


nnoremap <Leader>gv :Gitv --all<CR>
nnoremap <Leader>gh :Gitv --all<CR>
nnoremap <Leader>gd :Gitv --all<CR>
command! Ghistory Gitv! --all
let g:Gitv_DoNotMapCtrlKey=1
" Manual for gitv

" This is a list of key mappings that will work only in the gitv browser window.
" Where appropriate the differences in action is described for the two gitv
" modes.

"     Mode        Map     Description~

"     normal      <cr>      Opens a commit. In browser mode this will show the
"                           commit header information including the commit
"                           message. It will also display a full diff showing all the
"                           changes to files.

"                           Tip: if you press <cr> on anything sensible you can
"                           view the expected output. For example pressing <cr> on
"                           the line beginning a file diff, it will display the
"                           diff using Vim's built in diff viewing capability.
"                           Pressing <cr> on the tree sha will list all the files
"                           in the commit and pressing <cr> on one of these will
"                           show that file as it was in the commit. And so on.

"                           Pressing <cr> on the line "-- Load More --" will load
"                           |g:Gitv_CommitStep| more commits.

"                           In file mode this will open the focused file as it was
"                           in the currently selected diff. This allows you to
"                           easily go back in time and look at the focused file.

"                           Pressing <cr> on the top line in file mode opens the
"                           current working copy of the focused file.

"     normal      <c-n>     In either browser or file mode, this moves down to
"                 J         the next commit and opens it. This allows you to
"                           quickly move from commit to commit and view either
"                           the commit details or the file itself, depending on
"                           the mode, in one action.

"     normal      <c-p>     The same as <c-n> but move back a commit.
"                 K

"     normal      o         The same as <cr> but opens in a new |split|.
"                 <c-j>

"     normal      O         The same as <cr> but opens in a new |tab|.
"                 <c-l>

"     normal      s         The same as <cr> but opens in a new |vsplit|.
"                 <c-k>

"     normal      gw         Switch between the preview window and browser.

"     normal      i         This performs the same thing as <cr> in browser mode.
"                 <c-cr>    In file mode it opens the commit details rather than
"                           the focused file. (NOTE: many terminal emulators do
"                           not support <c-cr>).

"     normal      q         Quits gitv. In browser mode this will close the entire
"                           tab. In file mode this closes only the |preview-window|.
"                           Note: in browser mode this will close the tab
"                           regardless of any windows you may have opened as well
"                           as the gitv windows.

"     normal      a         Switches the '--all' argument and updates the browser
"                           window.

"     normal      u         Forces an update of the content of the browser window.

"     normal      co        Performs a 'git checkout' of the commit the cursor is
"                           on. In both modes this will present you with a choice
"                           of whether you would like to checkout the sha or any
"                           ref that might point to this commit.

"                           File mode differs in that it doesn't check out the
"                           entire commit but just the focused file in that
"                           commit.

"                           Tip: in gVim this will present you with a pop up dialog.
"                           You can make this a text choice by performing ':set
"                           guioptions+=c.'

"     normal      D         Performs a diff using Vim's built in diff viewing
"                           capabilities. This does nothing in browser mode. In
"                           file mode it will diff the current file with the
"                           focused file in the commit under the cursor.

"     visual      D         In visual mode this performs a diff against the file
"                           in the commit at the top of the selection against the
"                           file in the commit at the bottom of the selection. The
"                           newest file is always on the right.

"     normal      S         Open a diffstat of everything that has changed since
"                           the commit under the cursor, in both browse and
"                           normal mode.

"     visual      S         In visual mode this works in exactly the same way as
"                           normal mode. However, it only shows what has changed
"                           in the range of commits that are highlighted.

"     visual      m         Merges the commit in either the top or bottom line of
"                           the selection into the commit specified by the other
"                           end of the selection. This uses prompts to guide you
"                           through the merge process and should be fairly
"                           intuitive. By default, it will also ask for
"                           confirmation if you wish to perform a fast-forward
"                           merge or not. If you have defined g:Gitv_MergeArgs,
"                           you will not be prompted to fast forward.

"                           gitv does not allow you to merge arbitrary commits.
"                           The lines at the top and bottom of the selection
"                           must contain refs in the form of tags, remotes or
"                           local branches.

"     visual      cp        Cherry-Picks the selected commits to the active
"                           branch.

"     normal      cp        Same as visual cp

"     visual      rb        Reset (mixed) the active branch to the top of the
"                           selected commits.

"     normal      rb        Same as visual rb

"     visual      rbs       Reset (soft) the active branch to the top of the
"                           selected commits.

"     normal      rbs       Same as visual rbs

"     visual      rbh       Reset (hard) the active branch to the top of the
"                           selected commits.

"     normal      rbh       Same as visual rbh

"     normal      rev       Revert the commit. If the commit is a merge, selects
"                           the first parent for reverting to.

"     visual      rev       Same as rev, but revert a range of commits. If a
"                           merge is within the range, fails by necessity.

"     visual      d         Delete a branch or tag on the selected line. You will
"                           be asked which branch/tag to use.

"     normal      d         Same as visual d

"     normal      <leader>m Merges the first ref found on the current line in to
"                           the branch currently pointed to by HEAD. By default,
"                           this will prompt you if you wish to use a fast-forward
"                           merge. If you have defined g:Gitv_MergeArgs, you
"                           will not be prompted to fast forward.

"     normal      git       Enters command mode with ":Git " already typed for
"                           you. Just a convenient shortcut for executing git
"                           commands and watching them affect the repository.

"     normal      yc        Copy the sha on the current line in either mode.
"                           This also copies it to the '+' register so that it
"                           can be pasted externally. If there is no commit on
"                           the current line the behaviour (although harmless)
"                           is undefined.h



" -------------------------------------------------------------------------------------------
" UltiSnips Snippets
" ---------------------------------------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"



"Ranger mapping
nnoremap <leader>fe :call Ranger()<CR>


nnoremap <silent> <leader>ag :Ag<CR>
nnoremap <silent> <leader>ct :Tags<CR>
nnoremap <silent> <leader>l :Lines<CR>
nnoremap <silent> <leader>p :call FzfOmniFiles()<CR>

" FZF switch buffers and to files
nnoremap <silent> <leader>t :Files<CR> " to emulate commandT
nnoremap <silent> <leader>b :Buffers<CR>


" Stop highlighting after search with esc
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[] ]


" -------------------------------------------------------------------------------------------
" Code exploration
" ---------------------------------------------------------------------------------------------
nnoremap <silent> <leader>tl :CCTreeLoadDB<CR>
let g:CCTreeKeyTraceForwardTree = '<leader>tf'
let g:CCTreeKeyTraceReverseTree = '<leader>tx'

nmap <leader>cs <plug>(quickr_cscope_symbols)
nmap <leader>cg <plug>(quickr_cscope_global)
nmap <leader>cd <plug>(quickr_cscope_global)
nmap <leader>cc <plug>(quickr_cscope_callers)
nmap <leader>cx <plug>(quickr_cscope_callers)
nmap <leader>cf <plug>(quickr_cscope_files)
nmap <leader>ci <plug>(quickr_cscope_includes)
nmap <leader>ct <plug>(quickr_cscope_text)
nmap <leader>ce <plug>(quickr_cscope_egrep)
nmap <leader>cf <plug>(quickr_cscope_functions)

