local opt = { -- vim.opt.<key>
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true, -- sets vim.opt.number
    spell = false, -- sets vim.opt.spell
    signcolumn = "yes", -- sets vim.opt.signcolumn to yes
    wrap = false, -- sets vim.opt.wrap
    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,
    smartindent = true,
}

for key, value in pairs(opt) do
	vim.opt[key] = value
end
