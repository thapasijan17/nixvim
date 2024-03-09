{
  plugins = {
    luasnip.enable = true;
    cmp-nvim-lsp = { enable = true; }; # lsp
    cmp-buffer = { enable = true; };
    cmp-path = { enable = true; };
    cmp_luasnip = { enable = true; };
    cmp-cmdline = { enable = false; };
    nix.enable = true;
    cmp = {
      enable = true;
      settings = {
        snippet = { expand = "luasnip"; };
        experimental = {
          ghost_text = true;
        };
        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          maxViewEntries = 30;
        };
        formatting = {
          fields = [ "kind" "abbr" "menu" ];
        };
        window = {
          completion = {
            border = "rounded";
            winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None";
          };
          documentation = {
            border = "rounded";
          };
        };
        sources = [
        { name = "nvim_lsp"; }
        { name = "buffer"; }
        { name = "path"; }
        { name = "luasnip"; }
        ];
        mapping = {
          "<Tab>" = "cmp.mapping.confirm({ select = true })";
          "<C-o>" = "cmp.mapping.complete()";
          "<C-j>" = "cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select })";
          "<C-k>" = "cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select })";
        };
      };
    };
  };
}
