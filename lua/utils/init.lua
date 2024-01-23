local function is_dir_empty(dir)
    local ok, _, _ = os.execute('ls -A "' .. dir .. '" 2>/dev/null')
    return ok
end

-- Packer setup
local packer_install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if is_dir_empty(packer_install_path) then
    vim.cmd([[!git clone --depth 1 https://github.com/wbthomason/packer.nvim ]] .. packer_install_path)
end
