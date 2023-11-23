require('craftzdog.base')
require('craftzdog.highlights')
require('craftzdog.maps')
require('craftzdog.plugins')
-- Load ts_context_commentstring
require('ts_context_commentstring').setup {}

-- Skip loading the deprecated module for faster startup
vim.g.skip_ts_context_commentstring_module = true


local has = vim.fn.has
local is_mac = has "macunix"
local is_linux = has "unix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac == 1 then
  require('craftzdog.macos')
end
if is_linux == 1 then
  require('craftzdog.linux')
end
if is_win == 1 then
  require('craftzdog.windows')
end
if is_wsl == 1 then
  require('craftzdog.wsl')
end
