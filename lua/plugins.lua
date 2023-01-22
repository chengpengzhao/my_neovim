-- This file can be l aded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- 外观配置
  use 'wbthomason/packer.nvim' -- Packer can manage itself
  -- use 'folke/tokyonight.nvim' -- 颜色主题
  -- use 'ellisonleao/gruvbox.nvim' -- 颜色主题
  use "EdenEast/nightfox.nvim" -- 颜色主题
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}  --上方标签栏
  use {
      'nvim-tree/nvim-tree.lua',  -- 文件侧边菜单
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },   -- 文件树
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use 'vim-airline/vim-airline' -- 下方状态栏
  use 'vim-airline/vim-airline-themes' -- 状态栏的主题

  -- vim实用
  use 'folke/which-key.nvim' -- 用于配置和提示快捷键
  use 'norcalli/nvim-colorizer.lua' -- 显示 #FFFFFF 等代表的颜色
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }  -- 更加的智能的高亮等功能
  use 'kylechui/nvim-surround' -- 快速编辑单词两侧的符号
  use 'tpope/vim-repeat' -- 扩展了vim 中 . 的功能
  use 'kana/vim-textobj-user'  -- 扩展vim中的textobj
  use 'kana/vim-textobj-indent'
  use 'kana/vim-textobj-syntax'
  use 'kana/vim-textobj-function'
  use 'sgur/vim-textobj-parameter'
  use 'windwp/nvim-autopairs' -- 自动括号匹配
  use 'lewis6991/spellsitter.nvim' -- 当检查拼写的时候，仅仅检查注释
  use 'Yggdroot/indentLine'


  -- git 管理
  use 'tpope/vim-fugitive' -- 显示 git blame，实现一些基本操作的快捷执行
  use 'rhysd/git-messenger.vim' -- 利用 git blame 显示当前行的 commit message
  use 'lewis6991/gitsigns.nvim' -- 显示改动的信息

  -- tools
  use 'iamcco/markdown-preview.nvim'  -- markdown preview
  -- cd ~/.local/share/nvim/site/pack/packer/start/markdown...; yarn install; yarn build
  use 'jonsmithers/vim-beancount'  -- beancount记账
-- "path to your root beancount file
-- let b:beancount_root= '~/Desktop/zcppp/beanCount_zcp/zcp.bean'
-- " default or chunks
-- let g:beancount_account_completion= 'default'
-- let g:beancount_separator_col= 10
-- " If non-zero, accounts higher down the hierarchy will be listed first as completions.
-- let g:beancount_detailed_first = 1
-- autocmd Filetype beancount inoremap . .<C-\><C-O>:AlignCommodity<CR>
-- autocmd Filetype beancount inoremap <C-o> <C-x><C-O>



  -- Plugins can have post-install/update hooks
  --use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
  -- Post-install/update hook with neovim command


end)
