vim.g.mapleader = " "
vim.wo.number = true

--
-- Relative line numbers
--
vim.wo.relativenumber = true
-- rn toggle
vim.keymap.set(
  "n",
  "<leader>rn",
  function() vim.wo.relativenumber = not vim.wo.relativenumber end,
  { desc = "Toggle relative line numbers" }
)
-- rn on enter
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argv(0) == "" then vim.wo.relativenumber = true end
  end,
})
