local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "nvim-tree/nvim-tree.lua" },
  { "nvim-lualine/lualine.nvim" },
  { "folke/tokyonight.nvim" },
})

-- ── options ───────────────────────────────────────
vim.opt.number         = true
vim.opt.relativenumber = true
vim.opt.cursorline     = true
vim.opt.termguicolors  = true
vim.opt.tabstop        = 2
vim.opt.shiftwidth     = 2
vim.opt.expandtab      = true

-- ── colors ────────────────────────────────────────
vim.cmd("colorscheme tokyonight-night")

vim.api.nvim_set_hl(0, "Normal",       { fg = "#e0d0ff", bg = "#141216" })
vim.api.nvim_set_hl(0, "NormalNC",     { fg = "#e0d0ff", bg = "#141216" })
vim.api.nvim_set_hl(0, "Comment",      { fg = "#6a4f8a", italic = true })
vim.api.nvim_set_hl(0, "LineNr",       { fg = "#3a2a4a" })
vim.api.nvim_set_hl(0, "CursorLine",   { bg = "#1e1a22" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#9400D3", bold = true })
vim.api.nvim_set_hl(0, "Visual",       { bg = "#2d1f3d" })
vim.api.nvim_set_hl(0, "Search",       { fg = "#141216", bg = "#9400D3" })
vim.api.nvim_set_hl(0, "IncSearch",    { fg = "#141216", bg = "#a020f0" })
vim.api.nvim_set_hl(0, "MatchParen",   { fg = "#9400D3", bold = true })
vim.api.nvim_set_hl(0, "Pmenu",        { fg = "#e0d0ff", bg = "#1e1a22" })
vim.api.nvim_set_hl(0, "PmenuSel",     { fg = "#141216", bg = "#9400D3" })
vim.api.nvim_set_hl(0, "StatusLine",   { fg = "#e0d0ff", bg = "#1e1a22" })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#9400D3" })

-- ── lualine ───────────────────────────────────────
require("lualine").setup({
  options = {
    theme = {
      normal   = { a = { fg = "#141216", bg = "#9400D3", gui = "bold" },
                   b = { fg = "#e0d0ff", bg = "#1e1a22" },
                   c = { fg = "#e0d0ff", bg = "#141216" } },
      insert   = { a = { fg = "#141216", bg = "#a020f0", gui = "bold" } },
      visual   = { a = { fg = "#141216", bg = "#6a0099", gui = "bold" } },
      replace  = { a = { fg = "#141216", bg = "#ff7294", gui = "bold" } },
      inactive = { a = { fg = "#6a4f8a", bg = "#141216" },
                   c = { fg = "#6a4f8a", bg = "#141216" } },
    },
    component_separators = { left = "", right = "" },
    section_separators   = { left = "", right = "" },
  },
})

-- ── nvim-tree ─────────────────────────────────────
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  renderer = {
    highlight_opened_files = "name",
    icons = { show = { file = true, folder = true } },
  },
})

vim.api.nvim_set_hl(0, "NvimTreeNormal",    { fg = "#e0d0ff", bg = "#0f0d12" })
vim.api.nvim_set_hl(0, "NvimTreeFolderName",{ fg = "#9400D3" })
vim.api.nvim_set_hl(0, "NvimTreeRootFolder",{ fg = "#a020f0", bold = true })

-- ── keymaps ───────────────────────────────────────
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
