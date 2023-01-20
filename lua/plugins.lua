-- This file can be l aded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim' -- Packer can manage itself
  use 'folke/tokyonight.nvim' -- 颜色主题
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },   -- 文件树
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use 'vim-airline/vim-airline' -- 状态栏
  use 'vim-airline/vim-airline-themes' -- 状态栏的主题
  use 'folke/which-key.nvim' -- 用于配置和提示快捷键
  use 'norcalli/nvim-colorizer.lua' -- 显示 #FFFFFF 等代表的颜色
  use 'kylechui/nvim-surround' -- 快速编辑单词两侧的符号
  use 'windwp/nvim-autopairs' -- 自动括号匹配
  use 'lewis6991/spellsitter.nvim' -- 当检查拼写的时候，仅仅检查注释
  -- git 管理
  use 'tpope/vim-fugitive' -- 显示 git blame，实现一些基本操作的快捷执行
  use 'rhysd/git-messenger.vim' -- 利用 git blame 显示当前行的 commit message
  use 'lewis6991/gitsigns.nvim' -- 显示改动的信息
  -- Plugins can have post-install/update hooks
  --use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
  -- Post-install/update hook with neovim command
  --use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }


end)
