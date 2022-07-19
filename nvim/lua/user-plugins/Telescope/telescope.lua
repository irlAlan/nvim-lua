local fb_actions = require('telescope').extensions.file_browser.actions


require('telescope').setup{
  extensions = {
    file_browser = {
      hijack_netrw = true,

      mappings = {
        ["n"] = {
          ["<C-a>"] = fb_actions.create,
          ["<C-r>"] = fb_actions.rename,
          ["<C-m>"] = fb_actions.move,
          ["<C-c>"] = fb_actions.copy,
          ["<C-d>"] = fb_actions.delete,
        },
      },
    },
  },
	defaults = {
    layout_strategy = "flex",
	  previewer = true,
	  file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
	  grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
	  qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
	},
}

require('telescope').load_extension('file_browser')
