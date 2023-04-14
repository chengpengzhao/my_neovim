-- This file can be l aded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- 基础与外观配置
  use { 'lewis6991/impatient.nvim', config = [[require('impatient')]] } -- 加快nvim加载速度
  use 'wbthomason/packer.nvim' -- Packer can manage itself
  use 'nvim-lua/plenary.nvim' -- 很多 lua 插件依赖的库
  -- use 'ellisonleao/gruvbox.nvim' -- 颜色主题
  use "EdenEast/nightfox.nvim" -- 颜色主题
  use { 'neoclide/coc.nvim', branch = 'release' } -- lsp
  use 'liuchengxu/vista.vim' -- symbols and tags导航栏
  use 'mhinz/vim-startify' -- 启动界面
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' } --上方标签栏
  use {
    'nvim-tree/nvim-tree.lua', -- 文件侧边菜单
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    }, -- 文件树
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use 'vim-airline/vim-airline' -- 下方状态栏
  use 'vim-airline/vim-airline-themes' -- 状态栏的主题
  use { 'gelguy/wilder.nvim', requires = 'romgrk/fzy-lua-native' } -- 原生command line升级
  use 'xiyaowong/nvim-transparent' -- 可以移除掉背景色，让 vim 透明
  use 'andymass/vim-matchup' -- 高亮匹配的元素，例如 #if 和 #endif
  use 'Yggdroot/indentLine' -- 显示缩进

  -- vim实用
  use 'folke/which-key.nvim' -- 用于配置和提示快捷键
  use 'kazhala/close-buffers.nvim' -- buffer进阶管理
  use 'norcalli/nvim-colorizer.lua' -- 显示 #FFFFFF 等代表的颜色
  use 'martins3/fcitx.nvim' -- 自动切换输入法
  use 'rmagatti/auto-session' -- 打开 vim 的时候，自动回复上一次打开的样子
  use 'voldikss/vim-floaterm' -- 以悬浮窗口的形式打开终端
  use 'MattesGroeger/vim-bookmarks' -- 书签
  -- use 'ludovicchabant/vim-gutentags' --ctags

  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- 更加的智能的高亮等功能
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'RRethy/nvim-treesitter-textsubjects'
  use 'lewis6991/spellsitter.nvim' -- 当检查拼写的时候，仅仅检查注释

  -- 高效编辑
  use 'kylechui/nvim-surround' -- 快速编辑单词两侧的符号
  use 'tpope/vim-repeat' -- 扩展了vim 中 . 的功能
  use 'kana/vim-textobj-user' -- 扩展vim中的textobj
  use 'kana/vim-textobj-indent'
  use 'kana/vim-textobj-syntax'
  use 'kana/vim-textobj-function'
  use 'sgur/vim-textobj-parameter'
  use 'windwp/nvim-autopairs' -- 自动括号匹配
  use 'tpope/vim-commentary' -- 快速注释代码
  use 'honza/vim-snippets' -- snippets集合
  use 'mbbill/undotree' -- 显示编辑的历史记录
  -- use 'mg979/vim-visual-multi' -- 同时编辑多个位置
  use 'windwp/nvim-spectre' -- 媲美 vscode 的多文件替换


  -- 基于 telescope 的搜索
  use 'nvim-telescope/telescope.nvim'
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- telescope 搜索的插件，可以提升搜索效率
  use 'fannheyward/telescope-coc.nvim' -- 搜索 coc 提供的符号
  use 'dhruvmanila/telescope-bookmarks.nvim' -- 搜索 bookmarks
  use 'crispgm/telescope-heading.nvim' -- markdown switch between headings, :Telescope heading
  use 'xiyaowong/telescope-emoji.nvim' -- 使用 telescope 搜索 emoji 表情
  use 'tom-anders/telescope-vim-bookmarks.nvim' -- 辅助vim-bookmarks书签的搜索
  use 'AckslD/nvim-neoclip.lua' -- 保存 macro


  -- git 管理
  use 'tpope/vim-fugitive' -- 显示 git blame，实现一些基本操作的快捷执行
  use 'rhysd/git-messenger.vim' -- 利用 git blame 显示当前行的 commit message
  use 'lewis6991/gitsigns.nvim' -- 显示改动的信息
  use 'akinsho/git-conflict.nvim'

  -- markdown
  use 'iamcco/markdown-preview.nvim' -- markdown preview
  -- install: cd ~/.local/share/nvim/site/pack/packer/start/markdown...; yarn install; yarn build
  use 'mzlogin/vim-markdown-toc' -- 自动目录生成
  use 'dhruvasagar/vim-table-mode' -- 快速编辑 markdown 的表格
  use 'tpope/vim-markdown' -- markdown 语法高亮

  -- tools
  use 'nathangrigg/vim-beancount' -- beancount记账
  use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' } -- 一键运行代码
  use 'ojroques/vim-oscyank' -- 让 nvim 在远程 server 上拷贝到本地剪切板上

end)
