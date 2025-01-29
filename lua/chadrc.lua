-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",
  -- theme = "palenight",
  -- theme = "gruvchad",

  hl_override = {
    Comment = { italic = true },
    Function = { bold = true },

    ["@comment"] = { italic = true },
    ["@function"] = { bold = true },
  },
}

M.ui = {
  cmp = {
    icons_left = true,
    style = "atom_colored",
  },
  statusline = {
    enabled = true,
    separator_style = "round",
    theme = "default",
  },
}

M.nvdash = {
  load_on_startup = true,
  header = {
    "                 kernelk's spectacular neovim               ",
    " _                                __   _      ___  _    _   ",
    "(_) _   ____  _     _       ____ (__) (_) _  (___)(_)  (_)  ",
    "(_)(_) (____)(_)__ (_)__   (____) (_) (_)(_)(_)(_)(_)__(_)_ ",
    "(___) (_)_(_)(____)(____) (_)_(_) (_) (___)    (_)(________)",
    "(_)(_)(__)__ (_)   (_) (_)(__)__  (_) (_)(_)   (_)     (_)  ",
    "(_) (_)(____)(_)   (_) (_) (____)(___)(_) (_)  (_)     (_)  ",
    "                                                            ",
    "                     github.com/kernelk14                   ",
    "                                                            ",
 },
 {
    txt = function()
      local stats = require("lazy").stats()
      local ms = math.floor(stats.startuptime) .. " ms"
      return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
    end,
    hl = "NvDashFooter",
    no_gap = true,
 },

 { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
}

M.lsp = {signature = true}

return M
