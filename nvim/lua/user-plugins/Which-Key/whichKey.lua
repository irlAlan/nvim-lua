local M = {}

function M.setup()
  local whichkey = require "which-key"

  local conf = {
    window = {
      border = "single", -- none, single, double, shadow
      position = "bottom", -- bottom, top
    },
  }

  local opts = {
    mode = "n", -- Normal mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false, -- use `nowait` when creating keymaps
  }

  local mappings = {
    ["w"] = { "<cmd>update!<CR>", "Save" },
    ["q"] = { "<cmd>q!<CR>", "Quit" },
    --["qb"]= { "<cmd>bd<CR>", "Close current buffer"},

    b = {
      name = "Buffer",
      c = { "<Cmd>bd!<Cr>", "Close current buffer" },
      D = { "<Cmd>%bd|e#|bd#<Cr>", "Delete all buffers" },
    },

    p = {
      name = "Packer",
      c = { "<cmd>PackerCompile<cr>", "Compile" },
      i = { "<cmd>PackerInstall<cr>", "Install" },
      s = { "<cmd>PackerSync<cr>", "Sync" },
      S = { "<cmd>PackerStatus<cr>", "Status" },
      u = { "<cmd>PackerUpdate<cr>", "Update" },
    },

    g = {
      name = "Git",
      s = { "<cmd>Neogit<CR>", "Status" },
    },

    f = {
      name = "file",
      f    = {"<cmd>Telescope file_browser<CR>", "browse files"},
      s    = {"<cmd>Telescope find_files<CR>", "find file"},
      v    = {"<cmd>Telescope live_grep<CR>" , "find string in file" },
      b    = {"<cmd>Telescope buffer<CR>"    , "list all open buffers"},
      o    = {"<cmd>Telescope oldfiles<CR>"  , "list previously open files"},
      p    = {"<cmd>Telescope spell_suggest<CR>" , "spell suggestions for words under cursor"},
      c    = {"<cmd>Telescope commands<CR>"      , "lists commands"},
      h   = {"<cmd>Telescope command_history<CR>" , "lists command history"},
      u   = {"<cmd>Telescope current_buffer_fuzzy_find<CR>" , "fuzzy finder in current buffer"},
      



--      r    = { "<cmd>Telescope oldfiles<cr>",   "Open Recent File", noremap=false, buffer = 123 },
    },

    e = {
      name = "explorer",
      e = {"<cmd>NvimTreeToggle<CR>", "toggle nvim tree"},
    },

--    f = {
--       name = "file", -- optional group name
--       f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
--       r = { "<cmd>Telescope oldfiles<cr>",   "Open Recent File", noremap=false, buffer = 123 }, -- additional options for creating the keymap
--       n = { "New File" }, -- just a label. don't create any mapping
--       e = {"Edit File"}, -- same as above
--       ["1"] = "which_key_ignore",  -- special label to hide it in the popup
--       b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
--    }, -- { prefix = "<leader>" },
  }

  whichkey.setup(conf)
  whichkey.register(mappings, opts)
end

return M
