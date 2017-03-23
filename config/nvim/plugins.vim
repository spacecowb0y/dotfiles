if has_key(g:plugs, 'oceanic-next')
  colorscheme OceanicNext
  " Airline Hacks
  if has_key(g:plugs, 'vim-airline')
    let g:airline_theme='oceanicnext'
  endif
  " Pug Color Override
  autocmd BufNewFile,BufRead *.pug hi htmlTagName guifg=#ec5f67 ctermfg=203
  " Force italics because we paid $200 for 'em
  hi Comment gui=italic
  " Color Overrides for awesome experience
  hi Folded guibg=#1c2b34
  hi LineNr guibg=#1c2b34
  hi GitGutterAdd guibg=#1c2b34
  hi GitGutterChange guibg=#1c2b34
  hi GitGutterDelete guibg=#1c2b34
  hi GitGutterChangeDelete guibg=#1c2b34
  hi CursorLineNr guibg=#1c2b34
endif

if has_key(g:plugs, 'ctrlp.vim')
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules,*/bower,*/dist,*/public
  let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|node_modules|bower|public)$'
  let g:ctrlp_show_hidden = 1
endif

if has_key(g:plugs, 'matchtagalways')
  let g:mta_filetypes = {
    \ 'javascript.jsx': 1,
    \ 'html' : 1,
    \ 'xml' : 1,
    \ 'liquid': 1,
    \ }
endif

if has_key(g:plugs, 'ultisnips')
  let g:UltiSnipsJumpForwardTrigger="<c-b>"
  let g:UltiSnipsJumpBackwardTrigger="<c-z>"
  let g:UltiSnipsExpandTrigger="<C-j>"
endif

if has_key(g:plugs, 'deoplete-ternjs')
  let g:tern_request_timeout = 1
  let g:tern_show_signature_in_pum = '0'
  let g:deoplete#enable_at_startup = 1
  autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

  let g:deoplete#omni#functions = {}
  let g:deoplete#omni#functions.javascript = [
    \ 'tern#Complete',
    \ 'jspc#omni'
  \]

  let g:deoplete#sources = {}
  let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs', 'buffer']
  autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

  if has_key(g:plugs, 'tern_for_vim')
    let g:tern#command = ["tern"]
    let g:tern#arguments = ["--persistent"]
    let g:tern_show_argument_hints = 'on_move'
  endif
endif

if has_key(g:plugs, 'syntastic')
  let g:syntastic_javascript_checkers = ['standard']
  autocmd bufwritepost *.js silent !standard --fix %
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
  let g:syntastic_pug_checkers = ['pug_lint']
endif

if has_key(g:plugs, 'vim-jsx')
  let g:jsx_ext_required = 0
endif


if has_key(g:plugs, 'supertab')
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  let g:SuperTabDefaultCompletionType = "<c-n>"
  autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
  autocmd FileType scss let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
  autocmd FileType sass let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
  autocmd FileType css let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
  " close the preview window when you're not using it
  let g:SuperTabClosePreviewOnPopupClose = 1
  autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
endif


if has_key(g:plugs, 'vim-closetag')
  let g:closetag_filenames = "*.html,*.js,*.jsx"
endif

if has_key(g:plugs, 'indentLine')
  let g:indentLine_char = '│'
endif

if has_key(g:plugs, 'vim-devicons')
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sass'] = ''
endif

if has_key(g:plugs, 'TwitVim')
  let g:twitvim_enable_python3 = 1
endif
