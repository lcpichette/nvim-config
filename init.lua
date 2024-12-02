-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
vim.g.editorconfig = false
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.softtabstop = 4
    vim.opt.expandtab = true
    vim.opt.smartindent = true
    vim.opt.autoindent = true
  end,
})

local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

vim.lsp.inlay_hint.enable(false)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

vim.opt.swapfile = false
vim.api.nvim_set_hl(0, "IblScope", { fg = "#b496e7", underline = false })

require "lazy_setup"
require "polish"
require "config.highlights"
