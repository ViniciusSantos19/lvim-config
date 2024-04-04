
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- modo normal
map("n", "<C-s>", ":w<CR>", opts)
map("n", "<C-q>", ":q!<CR>", opts)
map("n", "<C-a>", "<Esc>ggVG", opts)

-- Modo Visual
map("x", "<C-a>", "ggVG", opts)

-- Modo de Inserção
map("i", "<C-a>", "<Esc>ggVG", opts)

lvim.plugins = {
	{
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
	},
	{"olimorris/onedarkpro.nvim"},
}
