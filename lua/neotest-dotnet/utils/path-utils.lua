local M = {}

--- Normalizes path separators based on the operating system
---@param path string The path to normalize
---@return string The normalized path
function M.normalize_path(path)
  if vim.fn.has('win32') == 1 then
    -- First replace all forward slashes with backslashes
    path = path:gsub('/', '\\')
    -- Then replace any double backslashes with single backslash
    path = path:gsub('\\\\', '\\')
    return path
  end
  return path
end

return M
