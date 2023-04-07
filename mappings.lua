-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>fe"] = { function() require("telescope.builtin").oldfiles() end, desc = "Find history" },
    -- Add mappings for copilot.lua

    ["<leader>,p"] = {
      function() require("copilot.panel").open { position = "bottom", ratio = 0.4 } end,
      desc = "Open Copilot panel",
    },
    ["<leader>,a"] = { function() require("copilot.panel").accept() end, desc = "Accept Copilot suggestion from panel" },
  },
  i = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<C-s>"] = { "<C-\\><C-n>:w!<cr>", desc = "Save File" },
    ["<C-a>"] = { function() require("copilot.suggestion").accept() end, desc = "Accept Copilot suggestion" },
    ["<C-e>"] = { function() require("copilot.suggestion").next() end, desc = "Next Copilot suggestion" },
    ["<C-q>"] = { function() require("copilot.suggestion").prev() end, desc = "Previous Copilot suggestion" },
  },
}
