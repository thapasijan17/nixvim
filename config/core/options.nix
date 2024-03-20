{
  # TEMP embedded lua because nix options are not working well at the moment
  extraConfigLua = ''
    vim.opt.number = true
    vim.opt.relativenumber = true

    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.showtabline = 2
    vim.opt.expandtab = true

    vim.opt.smartindent = true
    vim.opt.shiftwidth = 2

    vim.opt.breakindent = true

    vim.opt.hlsearch = true
    vim.opt.incsearch = true

    vim.opt.wrap = true

    vim.opt.splitbelow = true
    vim.opt.splitright = true

    vim.opt.mouse = "a"

    vim.opt.ignorecase = true
    vim.opt.smartcase = true
    vim.opt.grepprg = "rg --vimgrep"
    vim.opt.grepformat = "%f:%l:%c:%m"

    -- Much better completions
    vim.opt.updatetime = 50
    vim.opt.completeopt = {"menuone", "noselect", "noinsert"}

    vim.opt.swapfile = false
    vim.opt.backup = false
    vim.opt.undofile = true

    -- Enable 24-bit colors
    vim.opt.termguicolors = true

    vim.opt.signcolumn = "yes"

    vim.opt.cursorline = true -- Highlight the line where the cursor is located

    -- Set fold settings
    -- These options were reccommended by nvim-ufo
    -- See: https://github.com/kevinhwang91/nvim-ufo#minimal-configuration
    vim.opt.foldcolumn = "0"
    vim.opt.foldlevel = 99
    vim.opt.foldlevelstart = 99
    vim.opt.foldenable = true

    -- Always keep 8 lines above/below cursor unless at start/end of file
    vim.opt.scrolloff = 8

    -- Place a column line
    -- vim.opt.colorcolumn = "80"

    -- Reduce which-key timeout to 10ms
    vim.opt.timeoutlen = 10

    -- Set encoding type
    vim.opt.encoding = "utf-8"
    vim.opt.fileencoding = "utf-8"

    -- vim.opt.cmdheight = 0
    -- vim.opt.showmode = false
  '';
}
