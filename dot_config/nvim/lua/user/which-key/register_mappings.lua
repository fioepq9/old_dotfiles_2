-- Modify which-key registration
return {
  -- first key is the mode, n == normal mode
  n = {
    -- second key is the prefix, <leader> prefixes
    ["<leader>"] = {
      -- which-key registration table for normal mode, leader prefix
      -- ["N"] = { "<cmd>tabnew<cr>", "New Buffer" },
    },
  },
}
