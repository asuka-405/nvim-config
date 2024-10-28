local fn = vim.fn
local packer_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

-- Check if packer is installed
if fn.empty(fn.glob(packer_path)) > 0 then
  print("Cloning packer.nvim...")
  fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    packer_path
  })
  print("Packer cloned successfully.")
  vim.cmd("packadd packer.nvim")  -- Load packer after cloning
else
  print("Packer is already installed.")
end

