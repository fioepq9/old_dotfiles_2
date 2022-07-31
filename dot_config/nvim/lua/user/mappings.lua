return {
  -- Normal Mode 
  n = {
    ["<C-s>"] = { "<cmd>w!<cr>", desc = "Save File" },
  },
  -- Insert Mode
  i = {},
  -- Visual Mode
  v = {},
  -- Terminal Mode
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
