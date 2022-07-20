nnoremap <Leader><Space> :noh<cr>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

inoremap jk <Esc>
inoremap <Esc> <nop>

au FileType python,c,cpp,go nmap <silent> gd <Plug>(coc-definition)
au FileType python,c,cpp,go nmap <silent> gb <C-o> 
au FileType python,c,cpp,go nmap <silent> gl <Plug>(coc-openlink)
au FileType python,c,cpp,go nmap <silent> gy <Plug>(coc-type-definition)
au FileType python,c,cpp,go nmap <silent> gi <Plug>(coc-implementation)
au FileType python,c,cpp,go nmap <silent> gr <Plug>(coc-references)
au FileType python,c,cpp,go nmap <silent> gt <Plug>(coc-declaration)
au FileType python,c,cpp,go nmap <C-r> <Plug>(coc-rename)
au FileType python,c,cpp,go nnoremap <silent> K :call ShowDocumentation()<CR>
au FileType python,c,cpp,go au BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

au FileType go nnoremap <silent> gatj :CocCommand go.tags.add.line json<CR>

let g:coc_snippet_next = '<Tab>'
