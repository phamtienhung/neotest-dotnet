local M = {}

--- Normalizes path separators based on the operating system
---@param path string The path to normalize
---@return string The normalized path
function M.normalize_path(path)
  if vim.fn.has('win32') == 1 then
    return path:gsub('/', '\')
  end
  return path
end

return M
