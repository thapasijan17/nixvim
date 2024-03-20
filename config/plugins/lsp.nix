{
  plugins = {
    nix.enable = true;
    lsp = {
      enable = true;
      servers = {
        rust-analyzer = {
          enable = true;
          settings = {diagnostics.enable = true;};
          installRustc = true;
          installCargo = true;
        };
        lua-ls.enable = true;
        nil_ls.enable = true;
        pyright.enable = true;
        bashls.enable = true;
        #ccls.enable = true;
        clangd.enable = true;
        cmake.enable = true;
        csharp-ls.enable = true;
        gopls.enable = true;
        jsonls.enable = true;
        terraformls = {enable = true;};
      };
      keymaps = {
        silent = true;
        diagnostic = {
          "<leader>k" = "goto_prev";
          "<leader>j" = "goto_next";
        };
        lspBuf = {
          "gd" = "definition";
          "gD" = "declaration";
          "gi" = "implementation";
          "gr" = "references";
          "gt" = "type_definition";
          "K" = "hover";

          "<C-k>" = "signature_help";

          "<leader>ca" = "code_action";
          "<leader>rn" = "rename";
          "<leader>wa" = "add_workspace_folder";
          "<leader>wr" = "remove_workspace_folder";
        };
      };
    };
  };
}
