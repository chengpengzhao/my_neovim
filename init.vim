"=========================================================================="
"基础设置{{{

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif
set termguicolors  "set for bufferline
silent! colorscheme nightfox
"colorscheme gruvbox
"colorscheme tokyonight
"colorscheme tokyonight-night
"colorscheme tokyonight-storm
"colorscheme tokyonight-day
"colorscheme tokyonight-moon

set ttimeout ttimeoutlen=50     "设置功能键超时检测为 50 毫秒，加快vim速度
set timeout ttimeoutlen=400
set tags=./.tags;,.tags "ctags 配置，使用：输入 ctags -R生成tag文件
syntax on "开启高亮
set modeline "允许针对每个文件进行文件级别的设置
set modelines=10 "用法举例：# vim:set et sw=4 ts=4:
set gcr=a:blinkon0 " 光标样式
set scrolloff=4 "光标上下可见行数
set mouse=a "Automatically enable mouse usage
set mousehide "Hide the mouse cursor while typing
set fileformat=unix "有时候在windows下编写的python脚本在linux下不能运行，设置格式为unix能够自动清除多余的^M
set hidden "Enable hidden buffers, 不保存修改也能跳转buffers
set pastetoggle=<M-p> "激活/取消paste模式，粘贴出现自动缩进时用,按键为Alt-p
set nopaste "一般关闭paste模式，该模式下有的map会出问题
set backspace=indent,eol,start " 解决插入模式下delete/backspce键失效问题(Mac用户)
set autochdir "将工作目录自动切换到正在编辑的文件的目录。
set exrc                                                  " exec command in init.vim
set secure                                                " safely do command above
set noexpandtab                                           " use only '\t' as tab
set list                                                  " show hiding char
set viewoptions=cursor,folds,slash,unix                   " remember where to recover cursor
set inccommand=split                                      " show substitution automatically
set completeopt=longest,noinsert,menuone,noselect,preview " complete opject with a menue
set visualbell                                            " flash screen to notify error
set re=0                                                  "make increase speed
" set folding paragraph
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc

set history=10000 "需要记住多少次历史操作
" keep undo or temp file
set hidden
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif

set showmatch       " 高亮显示匹配的括号
set showmode        " Show current mode
set mousemodel=popup "Right mouse button pops up a menu
set background=dark "外观设置
"set t_Co=256          " 256 color mode
set cursorline        " 显示cursorline但最好不要高亮，容易把其他高亮覆盖掉
set shortmess=filmnrxoOtT       " Abbrev. of messages (avoids 'hit enter')
set cmdheight=2
set virtualedit=block "不让光标位置无限制
set conceallevel=2 "让隐藏字符完全隐藏
set wrap "不自动分行(但可以分行显示）
set textwidth=0
set foldenable "设置标记，三个{定义为标记，可用za折叠展开
set foldmethod=marker
autocmd FileType c,cpp,python set foldmethod=indent nofoldenable

"解决乱码问题
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,latin1
set langmenu=zh_CN.UTF-8
set helplang=cn

set nrformats= "设置数字为十进制，防止<C-a><C-x>修改时出现不希望的结果
filetype plugin on "依文件类型设置自动缩进
filetype indent on
runtime macros/matchit.vim "增强%命令功能，可以在配对关键字间跳转
set ruler
set number
set relativenumber "显示当前的行号(相对)：
augroup relative_numbser
    autocmd!
    autocmd InsertEnter * :set norelativenumber
    autocmd InsertLeave * :set relativenumber
augroup END

"命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令。
set wildmenu        " wild char completion menu
set wildmode=longest:list,full
set wildchar=<TAB>  " start wild expansion in the command line using <TAB>
set noswapfile " 不要生成swap文件，当buffer被丢弃的时候隐藏它
set showcmd     " Show partial commands in status line and selected characters/lines in visual mode
set showmode     " Display the current mode
set incsearch " 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set hlsearch  " 高亮搜索结果
set autoread        " auto read when file is changed from outside
set autowrite " 当失去焦点或者离开当前的 buffer 的时候保存
autocmd FocusLost,BufLeave * silent! update
" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

set list
set listchars=tab:»-,trail:■ "显示行尾多余空格与tab符号
set expandtab "将制表符扩展为空格
set tabstop=2 "设置编辑时制表符占用空格数
set shiftwidth=2 "设置格式化时制表符占用空格数
set softtabstop=0 " 关闭softtabstop 永远不要将空格和tab混合输入
set autoindent   " Indent at the same level of the previous line 开启自动缩进
set smartindent "开启智能对齐
set cindent "设置使用 C/C++ 语言的自动缩进方式
set cmdheight=1 "设置命令行的高度
set ignorecase "设置大小写不敏感/当前为大写字母时调整为敏感/自动改动字母大小写
set smartcase
set infercase
set smarttab        " insert tabs on the start of a line according to context
set lazyredraw "在执行宏命令时，不进行显示重绘；在宏命令执行完成后，一次性重绘，以便提高性能

set magic
"magic模式，使用\m前缀，其后模式的解释方式为'magic'选项。^，$，.，*和[]等字符含有特殊意义；而+、?、()、和{}等其它字符则按字面意义解释。magic为默认设置，表达式中的\m前缀可以省略；
"no magic模式，使用\M前缀，其后模式的解释方式为'nomagic'选项。除了^和$之外的特殊字符，都将被视为普通文本；
"very magic模式，使用\v前缀，其后模式中除 '0'-'9'，'a'-'z'，'A'-'Z' 和 '_' 之外的字符都当作特殊字符解释；
"very
"nomagic模式，使用\V前缀，其后模式中只有反斜杠（\）具有特殊意义，用于原义查找。
"nnoremap / /\v
"cnoremap %s/ %s/\v


"单词自动补全功能,写博客时用,自定义词典可参考网上教程
""set dictionary+=/usr/share/dict/american-english
"set dictionary+=/usr/share/dict/engspchk-dict
"Ctrl+Space单词补全"
"WSL系统中此快捷键不管用，故换成下面一条
"inoremap <C-@> <C-x><C-k>
"inoremap <C-f> <C-x><C-k>

"切换是否拼写检查,markdown默认开启，Fa切换
"autocmd Filetype markdown setlocal spell
"nnoremap <F3> : setlocal spell!<CR>
"set spelllang=en_us,en_gb,cjk
"方便拼写检查在单词间跳转Alt-[ or Alt-]
"这个快捷键在vim8.2好像有bug，按alt会进入插入模式，不好用
"autocmd Filetype markdown nnoremap [ [s
"autocmd Filetype markdown nnoremap ] ]s
"来自那位用Vim上课记笔记的大佬，insert模式<C-o>自动更正前一个单词
"zg     把当前单词添加到拼写文件中
"zw     把当前单词从拼写文件中删除
"z=     为当前单词提供更正建议
"插入模式下使用 <Ctrl-x>-s 获得的自动补全单词列表
"inoremap <C-o> <c-g>u<Esc>[s1z=`]a<c-g>u
"<c-g>u的含义 ：don't break undo with next left/right cursor *i_CTRL-G_U* movement (but only if the cursor stays within same the line)

"}}}
"=========================================================================="
"快捷键相关{{{

"定义全局<Leader>
let mapleader = ","

"设置ESC切换搜索结果是否高亮
"关闭高亮直到下一次查找
cnoremap hl  nohlsearch<CR>

"buffer前后跳转
"noremap <Leader>j :bnext<CR>
"noremap <Leader>k :bpre<CR>

"选择全文
noremap a <Esc>ggVG<CR>

"Tabs，各窗口间切换
"WSL系统可以使用S-tab切换了，故修改为更方便的快捷键
"nnoremap <Tab> gt
"nnoremap <S-Tab> gT
"nnoremap <silent> <S-t> :tabnew<CR>

"普通模式用<C-y>复制到系统剪切板，<C-y>y也可用
vnoremap <leader>y "+y
noremap <leader>p "+p
vnoremap <leader>d "+d

"空格快速进入命令模式
"noremap  <Space> :

"打开OpenFOAM相关文件时为了方便输入命令加了下面这个映射,!表示输入系统shell命令
"autocmd Filetype foam256* noremap  <Space> :!

"文件保存与退出quick write ,quick quit的缩写，很实用
nnoremap <Leader>w  :w<CR>
nnoremap  qw    :wq<CR>
nnoremap  qq    :q!<CR>

"宏名称统一用a，简化按键,qa开始记录，q结束，再按@即可
"改为：alt+@重复宏a，避免和@:命令冲突
nnoremap @  @a

"模仿shell快捷键
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

"插入模式下移动光标
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>

"向后删除 *为向前删除，shell通用
"在WSL中发现C-8(Backspace)无法删除了,只能用backspace
inoremap <C-d> <Delete>

"超级用户权限编辑，出现权限不够无法保存时命令模式输入sw即可
cnoremap <leader>sw w !sudo tee >/dev/null %

"快速删除当前缓冲区并返回上一缓冲区（不关闭窗口)
nnoremap <silent> d :bprevious<bar>bdelete #<CR>

"快速编辑vim配置文件,在其他文件界面里呼出配置文件，并方便地source以立即适用改动
"nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"nnoremap <leader>sv :source $MYVIMRC<cr>

"可视模式下用*和#查找选中文本
"xnoremap * :<C-u>call <SID>VsetSearch()<CR>/<C-R>=@/<CR><CR>
"xnoremap # :<C-u>call <SID>VsetSearch()<CR>?<C-R>=@/<CR><CR>
"function! s:VsetSearch()
"    let temp=@s
"    norm! gv"sy
"    let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n','g')
"    let @s= temp
"endfunction

"}}}
"=========================================================================="
"" Others{{{
"*****************************************************************************
" 计算某个pattern从startline到光标处出现的次数
function! Count(pattern,startline)
  let l:cnt = 0
  silent! exe a:startline . ',.s/' . a:pattern . '/\=execute(''let l:cnt += 1'')/gn'
  return l:cnt
endfunction
"计算markdown中一级标题出现的次数，用来给公式自动编号
function! Findtitle()
    for i in range(line('.'))
        if matchstr(getline(line('.')-i),'^# \+')!=#''
            let l:latesttitleline=line('.')-i
            break
        else
            let l:latesttitleline=line('.')
        endif
    endfor
    return l:latesttitleline
endfunction

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************
".Md文件也能被识别为markdown
autocmd BufNewFile,BufRead *.Md set filetype=markdown
"ejs识别为html
autocmd BufNewFile,BufRead *.ejs set filetype=html
"Scons相关脚本识别为python
autocmd BufNewFile,BufRead SConstruct set filetype=python
autocmd BufNewFile,BufRead SConscript set filetype=python
"需要安装black(pip3 install black)
autocmd Filetype python nnoremap <F8> :call PyFormat()<CR><CR>
func! PyFormat()
      exec "!python3 -m black %"
endfunc
if !exists('*s:setupWrapping')
    function s:setupWrapping()
        set wrap
        set wm=2
        set textwidth=79
    endfunction
endif

"" The PC is fast enough, do syntax highlight syncing from start unless 200 lines
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync maxlines=200
augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"" txt
augroup vimrc-wrapping
  autocmd!
  autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

"*****************************************************************************
"" Mappings
"*****************************************************************************
"" Split
"noremap <Leader>h :<C-u>split<CR>
"noremap <Leader>v :<C-u>vsplit<CR>

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

"*****************************************************************************
"" Custom configs
"*****************************************************************************
" c
autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab

" html
" for html files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab

" javascript
let g:javascript_enable_domhtmlcss = 1

" vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript setl tabstop=4|setl shiftwidth=4|setl expandtab softtabstop=4
augroup END

" 让远程的 server 内容拷贝到系统剪切板中，具体参考 https://github.com/ojroques/vim-oscyank
"autocmd TextYankPost * if v:event.operator is 'y' && v:event.regname is '+' | execute 'OSCYankReg +' | endif
"autocmd TextYankPost * if v:event.operator is 'd' && v:event.regname is '+' | execute 'OSCYankReg +' | endif

"}}}
"=========================================================================="
"" load Plugs{{{
lua require('plugins')
lua require('usr.bufferline')
lua require('usr.nvim-tree')
lua require('usr.which-key')
lua require('usr.code_runner')
lua require('usr.nvim-treesitter')
nn xx x
"因为 nvim-treesitter-textobjects 使用 x 来跳转，原始的 x 被映射为 xx
lua require('usr.telescope')
lua require("nvim-surround").setup{}
lua require('gitsigns').setup{}
lua require('nvim-autopairs').setup{}
lua require('spellsitter').setup{}
lua require("colorizer").setup{'css'; 'javascript'; 'vim'; html = { mode = 'foreground';}}

" 加载 vim 配置, 参考 https://github.com/jdhao/nvim-config
let s:core_conf_files = [
      \ 'airline.vim',
      \ 'startify.vim',
      \ 'wilder.vim',
      \ 'coc.vim',
      \ 'misc.vim',
      \ 'debug.vim',
      \ ]

for s:fname in s:core_conf_files
  execute printf('source %s/vim/%s', stdpath('config'), s:fname)
endfor
"}}}
"=========================================================================="
