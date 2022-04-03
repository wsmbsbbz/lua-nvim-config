-- set the theme style
-- 'oceanic' | 'darker' | 'lighter' | 'palenight' | 'deep ocean'
vim.g.material_style = "oceanic"
local colorscheme = "material"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
