local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
  return
end

vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
vim.g.indent_blankline_filetype_exclude = {
	"help",
	"startify",
	"dashboard",
	"packer",
	"neogitstatus",
	"NvimTree",
	"Trouble",
}
vim.g.indent_blankline_char = "▏"
vim.g.indent_blankline_use_treesitter = true

indent_blankline.setup {
  show_current_context = true,
  show_current_context_start = true
}
