require("fibonascii.telescope")
require("fibonascii.harpoon")
require("fibonascii.lsp")
require("fibonascii.completion")

P = function(v)
  print(vim.inspect(v))
  return v
end

if pcall(require, 'plenary') then
  RELOAD = require('plenary.reload').reload_module

  R = function(name)
    RELOAD(name)
    return require(name)
  end
end

