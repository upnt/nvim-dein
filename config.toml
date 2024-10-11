local options = {
    opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
	timeoutlen = 300,
    },
    g = { -- vim.g.<key>
    -- configure global vim variables (vim.g)
        python3_host_prog = vim.fn.expand "$HOME/.local/share/pynvim/.venv/bin/python",
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
    },
}
-- Mappings can be configured through AstroCore as well.
-- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
local mappings = {
    -- first key is the mode
    i = {
        -- second key is the lefthand side of the map
	["jj"] = '<ESC>',
    },
}

for option_name, sub_options in pairs(options) do
    for key, value in pairs(sub_options) do
	    vim[option_name][key] = value
    end
end

for option_name, sub_options in pairs(options) do
    for key, value in pairs(sub_options) do
	    vim[option_name][key] = value
    end
end

for mode, map_table in pairs(mappings) do
    for lhs, rhs in pairs(map_table) do
        vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true, silent = true })
    end
end
