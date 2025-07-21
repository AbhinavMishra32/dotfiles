vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- vim.keymap.set('n', '<leader>tP', function()
--   vim.diagnostic.config({ virtual_lines = { current_line = true }, virtual_text = false })
--
--   vim.api.nvim_create_autocmd('CursorMoved', {
--     group = vim.api.nvim_create_augroup('line-diagnostics', { clear = true }),
--     callback = function()
--       vim.diagnostic.config({ virtual_lines = false, virtual_text = true })
--       return true
--     end,
--   })
-- end)



-- ---@param jumpCount number
-- local function jumpWithVirtLineDiags(jumpCount)
-- 	pcall(vim.api.nvim_del_augroup_by_name, "jumpWithVirtLineDiags") -- prevent autocmd for repeated jumps
--
-- 	vim.diagnostic.jump { count = jumpCount }
--
-- 	local initialVirtTextConf = vim.diagnostic.config().virtual_text
-- 	vim.diagnostic.config {
-- 		virtual_text = false,
-- 		virtual_lines = { current_line = true },
-- 	}
--
-- 	vim.defer_fn(function() -- deferred to not trigger by jump itself
-- 		vim.api.nvim_create_autocmd("CursorMoved", {
-- 			desc = "User(once): Reset diagnostics virtual lines",
-- 			once = true,
-- 			group = vim.api.nvim_create_augroup("jumpWithVirtLineDiags", {}),
-- 			callback = function()
-- 				vim.diagnostic.config { virtual_lines = false, virtual_text = initialVirtTextConf }
-- 			end,
-- 		})
-- 	end, 1)
-- end
--
-- vim.keymap.set("n", "ge", function() jumpWithVirtLineDiags(1) end, { desc = "󰒕 Next diagnostic" })
-- vim.keymap.set("n", "gE", function() jumpWithVirtLineDiags(-1) end, { desc = "󰒕 Prev diagnostic" })
