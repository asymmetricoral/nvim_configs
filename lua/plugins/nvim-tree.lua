return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      update_focused_file = {
        enable = true
      }
    }
    vim.keymap.set("n", "∫", ":NvimTreeToggle<CR>")
    vim.keymap.set("n", "<C-b>", ":NvimTreeFocus<CR>")
    vim.keymap.set("i", "<C-b>", "<Esc>:NvimTreeFocus<CR>")
  end,
}
