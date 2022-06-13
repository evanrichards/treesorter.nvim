local ts_utils = require("nvim-treesitter.ts_utils")
local M = {}

local get_master_node = function()
	local node = ts_utils.get_node_at_cursor()
	if node == nil then
		error("No Treesitter parser found")
		return
	end
	print("test", node)
	if node:type() ~= "object" then
		error("treesitter only works on objects")
		return
	end
	return node
end

M.select = function()
	local node = get_master_node()
	if node == nil then
		return
	end
	local bufnr = vim.api.nvim_get_current_buf()
	ts_utils.update_selection(bufnr, node)
end

return M
