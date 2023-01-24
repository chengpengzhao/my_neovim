let g:transparent_enabled = v:false " nvim-transparent

" beancount
let b:beancount_root= '/Users/zhaochengpeng/Desktop/repositories/beanCount_zcp/zcp.bean'
" default or chunks
let g:beancount_account_completion= 'default'
let g:beancount_separator_col= 10
" If non-zero, accounts higher down the hierarchy will be listed first as completions.
let g:beancount_detailed_first = 1
autocmd Filetype beancount inoremap . .<C-\><C-O>:AlignCommodity<CR>
autocmd Filetype beancount inoremap <C-o> <C-x><C-O>

" 在 markdown 中间编辑 table
let g:table_mode_corner='|'
" 默认 markdown preview 在切换到其他的 buffer 或者 vim
" 失去焦点的时候会自动关闭 preview
let g:mkdp_auto_close = 0
" 书签选中之后自动关闭 quickfix window
let g:bookmark_auto_close = 1

" 让光标自动进入到 popup window 中间
let g:git_messenger_always_into_popup = v:true

" visual
let g:vista_sidebar_position = "vertical topleft"
let g:vista_default_executive = 'coc'
let g:vista_finder_alternative_executives = 'ctags'

" floaterm
let g:floaterm_keymap_prev   = '<C-p>'
let g:floaterm_keymap_new    = '<C-n>'
let g:floaterm_keymap_toggle = '<C-t>'

let g:git_messenger_no_default_mappings = v:true

" 不要让进入 vim 的时候光标在 nvim-tree 中，所以默认关闭 bookmarks
let g:auto_session_pre_save_cmds = ["NvimTreeClose", "BookmarkSave.vim-bookmarks"]
let g:auto_session_pre_restore_cmds = ["BookmarkLoad .vim-bookmarks"]

let g:bookmark_save_per_working_dir = 1
let g:bookmark_no_default_key_mappings = 1

" 默认不要折叠 markdown
let g:vim_markdown_folding_disabled = 1

let g:markdown_fenced_languages = ['html', 'python', 'sh', 'c', 'cpp', 'diff', 'rust']
let g:markdown_minlines = 200

" 自动关闭 vim 如果 window 中只有一个 filetree
" https://github.com/kyazdani42/nvim-tree.lua
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif

" 定义预先录制的 macro
let @j = 'ysiw`\<Esc>' " 在一个 word 两侧添加上 `，例如将 abc 变为 `abc`
