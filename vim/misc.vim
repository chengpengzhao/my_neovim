let g:transparent_enabled = v:false " nvim-transparent

"path to your root beancount file
let b:beancount_root= '/Users/zhaochengpeng/Desktop/repositories/beanCount_zcp/zcp.bean'
" default or chunks
let g:beancount_account_completion= 'default'
let g:beancount_separator_col= 10
" If non-zero, accounts higher down the hierarchy will be listed first as completions.
let g:beancount_detailed_first = 1
autocmd Filetype beancount inoremap . .<C-\><C-O>:AlignCommodity<CR>
autocmd Filetype beancount inoremap <C-o> <C-x><C-O>
