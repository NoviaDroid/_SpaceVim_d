" https://spacevim.org/documentation/#bootstrap-functions
" https://spacevim.org/conventions/

" ------------------------------------------------------------------------------

" https://stackoverflow.com/questions/18321538/vim-error-e474-invalid-argument-listchars-tab-trail
set encoding=utf-8
scriptencoding utf-8

function! myspacevim#before() abort
  set clipboard+=unnamedplus
  set noswapfile "noswap files"
  let g:NERDTreeDirArrowExpandable = '+'
  let g:NERDTreeDirArrowCollapsible = '-'
  let g:NERDTreeGitStatusIndicatorMapCustom = {
                  \ 'Modified'  :'M',
                  \ 'Staged'    :'S',
                  \ 'Untracked' :'N',
                  \ 'Renamed'   :'R',
                  \ 'Unmerged'  :'U',
                  \ 'Deleted'   :'D',
                  \ 'Dirty'     :'D',
                  \ 'Ignored'   :'I',
                  \ 'Clean'     :'C',
                  \ 'Unknown'   :'?',
                  \ }
endfunction

function! myspacevim#after() abort
  " let g:NERDTreeDirArrowExpandable = '+'
  " let g:NERDTreeDirArrowCollapsible = '-'

  let g:neoformat_python_black = {
    \ 'exe': 'black',
    \ 'stdin': 1,
    \ 'args': ['-q', '-'],
    \ }
  let g:neoformat_enabled_python = ['black']
endfunction
