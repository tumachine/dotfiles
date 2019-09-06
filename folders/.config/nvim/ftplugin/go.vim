
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1

let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'

" let g:go_auto_type_info = 1
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0

" Open :GoDeclsDir with ctrl-g
nmap <C-g> :GoDeclsDir<cr>
imap <C-g> <esc>:<C-u>GoDeclsDir<cr>

" Show by default 4 spaces for a tab
autocmd BufNewFile,BufRead <buffer> setlocal noexpandtab tabstop=4 shiftwidth=4

" :GoBuild and :GoTestCompile
nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

" :GoTest
nmap <leader>t  <Plug>(go-test)

" :GoRun
nmap <leader>r  <Plug>(go-run)

" :GoDoc
nmap <Leader>d <Plug>(go-doc)

" :GoCoverageToggle
nmap <Leader>c <Plug>(go-coverage-toggle)

" :GoInfo
nmap <Leader>i <Plug>(go-info)

" :GoMetaLinter
nmap <Leader>l <Plug>(go-metalinter)

" :GoDef but opens in a vertical split
nmap <Leader>v <Plug>(go-def-vertical)
" :GoDef but opens in a horizontal split
nmap <Leader>s <Plug>(go-def-split)

" :GoAlternate  commands :A, :AV, :AS and :AT
command! -bang A call go#alternate#Switch(<bang>0, 'edit')
command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
command! -bang AS call go#alternate#Switch(<bang>0, 'split')
command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" build_go_files is a custom function that builds or compiles the test file.
" It calls :GoBuild if its a Go file, or :GoTestCompile if it's a test file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
