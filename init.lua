require('giusniyyel/base')
require('giusniyyel/highlights')
require('giusniyyel/maps')
require('giusniyyel/plugins')

local has = function(x)
  return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('giusniyyel/macos')
end
if is_win then
  require('giusniyyel/windows')
end

print('init.lua loaded')
