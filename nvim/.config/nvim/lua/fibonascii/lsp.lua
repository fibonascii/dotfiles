-- [[ Custom Lua Keymaps for LSP Config ]] --


-- [[ Local Map function ]] --
local map = function (type, key, value)
    vim.fn.nvim_buf_set_keymap(0,type,key,value,{noremap = true, silent = true});
end

-- [[ Custtom function to control what happens when the LSP attachs to the client ]] --
local custom attach = function(client)
    print("LSP Started");
    require'completion'.on_attach(client)
    require'diagnostic'.on_attach(client)

    map('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
end
