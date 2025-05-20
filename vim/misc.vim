" 因为 telescope-coc 没有实现 outline，所以只能靠 telescope-heading.nvim 实现
func! Outline()
  if expand("%:e") ==# "md"
    exec "Telescope heading"
  else
    exec "Telescope coc document_symbols"
  endif
endf
" 实现一键运行各种文件，适合非交互式的，少量的代码，比如 leetcode
func! QuickRun()
  exec "w"
  let ext = expand("%:e")
  if ext ==# "tex"
    exec "VimtexCompile"
  else
    exec "RunCode"
  endif
endf
func! Preivew()
  exec "w"
  let ext = expand("%:e")
  if ext ==# "md"
    exec "MarkdownPreview"
  elseif ext ==# "tex"
    exec "VimtexView"
  else
    echo "no preview"
  endif
endf

let g:transparent_enabled = v:false " nvim-transparent

" indentline
let g:indentLine_enabled = 1
let g:indentLine_color_term = 202
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"Vim-markdown设置
let g:vim_markdown_conceal = 0
let g:tex_conceal = ""
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_folding_level = 1
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_strikethrough = 0
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_math = 1
 
"gutentags配置，由于依靠compile_command.json总是跳转到安装目录，不方便编辑源文件，还是用ctags吧
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_modules = ['ctags']
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:gutentags_ctags_exclude=['.ccls-cache','build','install']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" beancount
let g:python3_host_prog = 'python3'  "need correct python environment to auto complete
let b:beancount_root= '/Users/chengpengzhao/Desktop/zhaoCP/beanCount_zcp/zcp.bean'
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
"let g:auto_session_pre_save_cmds = ["NvimTreeClose", "BookmarkSave.vim-bookmarks"]
"let g:auto_session_pre_restore_cmds = ["BookmarkLoad .vim-bookmarks"]

let g:bookmark_save_per_working_dir = 1
let g:bookmark_no_default_key_mappings = 1

" 默认不要折叠 markdown
let g:vim_markdown_folding_disabled = 1
let g:markdown_fenced_languages = ['html', 'python', 'sh', 'c', 'cpp', 'diff', 'rust']
let g:markdown_minlines = 200

" 自动关闭 vim 如果 window 中只有一个 filetree
" https://github.com/kyazdani42/nvim-tree.lua
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
