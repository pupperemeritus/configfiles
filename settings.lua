local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
local set = vim.opt

local config = {

  -- Set colorscheme
  colorscheme = "afterglow",

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
    },
  },

  overrides = {
    treesitter = {
      ensure_installed = { "lua" },
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

return config
