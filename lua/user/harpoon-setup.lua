local harpoon = require "harpoon"

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<Leader>a", function() harpoon:list():add() end, { desc = "Add new harpoon target" })
vim.keymap.set(
  "n",
  "<Leader>H",
  function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
  { desc = "List harpoon targets" }
)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end, { desc = "Quick-focus harpoon target 1" })
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end, { desc = "Quick-focus harpoon target 2" })
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end, { desc = "Quick-focus harpoon target 3" })
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end, { desc = "Quick-focus harpoon target 4" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
