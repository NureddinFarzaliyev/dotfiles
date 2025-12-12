return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "github/copilot.vim" },
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken",
		config = function()
			require("CopilotChat").setup({
				window = {
					layout = "replace",
					title = "CopilotChat",
				},
			})
			require("keymaps.copilot-chat")
		end,
	},
}
