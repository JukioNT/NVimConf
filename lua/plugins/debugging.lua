return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"rcarriga/nvim-dap-ui",
			"mfussenegger/nvim-dap-python",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			require("dap-python").setup("/usr/bin/python3.10")
			require("dapui").setup()

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			vim.keymap.set("n", "<leader>dc", function()
				dap.continue()
			end, { silent = true, desc = "Debugger Continue" })
			vim.keymap.set("n", "<leader>dt", function()
				dap.terminate()
			end, { silent = true, desc = "Debugger Terminate" })
			vim.keymap.set("n", "<leader>ds", function()
				dap.step_over()
			end, { silent = true, desc = "Debugger Step Over" })
			vim.keymap.set("n", "<leader>di", function()
				dap.step_into()
			end, { silent = true, desc = "Debugger Step Into" })
			vim.keymap.set("n", "<leader>do", function()
				dap.step_out()
			end, { silent = true, desc = "Debugger Step Out" })
			vim.keymap.set("n", "<leader>db", function()
				dap.set_breakpoint()
			end, { silent = true, desc = "Debugger Breakpoint" })
		end,
	},
}
