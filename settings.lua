local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
local set = vim.opt

local config = {

  -- Set colorscheme
  colorscheme = "nord-light-brighter",

  -- Add plugins
  plugins = {
    { "andweeb/presence.nvim" },
    {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
    require("lsp_signature").setup()
    end,
    },
    { "farmergreg/vim-lastplace",
      "junegunn/limelight.vim",
      "junegunn/goyo.vim",
      "tyrannicaltoucan/vim-deep-space",
      "danilo-augusto/vim-afterglow",
      "huytd/vim-nord-light-brighter",
    },
    {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'},
  },

  overrides = {
    treesitter = {
      ensure_installed = { "lua","c","cpp","python","json","haskell","javascript","typescript","go","css" },
    },
  },

  -- On/off virtual diagnostics text
  virtual_text = true,

  -- Disable default plugins
  enabled = {
    bufferline = true,
    nvim_tree = true,
    lualine = true,
    lspsaga = true,
    gitsigns = true,
    colorizer = true,
    toggle_term = true,
    comment = true,
    symbols_outline = true,
    indent_blankline = true,
    dashboard = true,
    which_key = true,
    neoscroll = true,
    ts_rainbow = true,
    ts_autotag = true,
  },
}

-- Set options
set.relativenumber = true
set.timeoutlen = 100
set.hidden = false
set.smarttab = true
set.expandtab  = true

-- language servers
-- "pyright","pylsp","jsonls","html",
-- "kotlin_language_server","cssls","clangd",
-- "remark_ls","rome","sqlls","sumneko_lua",
-- "jdtls","hls","gopls","rust_analyzer"
-- Set key bindings
map("n", "<C-s>", ":w!<CR>", opts)
map("n", "<F9>",":Goyo <bar> <CR>",opts)
map("n", "<F8>", ":Limelight! <bar> <CR>",opts)
map("n", "<F7>", ":Limelight <bar> <CR>",opts)
-- Set autocommands
vim.cmd [[
  augroup packer_conf
    autocmd!
    autocmd bufwritepost plugins.lua source <afile> | PackerSync
  augroup end
]]

local tabnine = require('cmp_tabnine.config')
tabnine:setup({
	max_lines = 1000;
	max_num_results = 20;
	sort = true;
	run_on_every_keystroke = true;
	snippet_placeholder = '..';
	ignored_file_types = { -- default is not to ignore
		-- uncomment to ignore in lua:
		-- lua = true
	};
})
return config
