{
  plugins = {
    noice = {
      enable = true;
      notify = {
        enabled = false;
      };
      messages = {
        enabled = true;
      };
      lsp = {
        message = {
          enabled = true;
        };
        progress = {
          enabled = false;
          view = "mini";
        };
      };
      popupmenu = {
        enabled = true;
        backend = "nui";
      };
      format = {
        filter = {
          pattern = [":%s*%%s*s:%s*" ":%s*%%s*s!%s*" ":%s*%%s*s/%s*" "%s*s:%s*" ":%s*s!%s*" ":%s*s/%s*"];
          icon = "";
          lang = "regex";
        };
        replace = {
          pattern = [":%s*%%s*s:%w*:%s*" ":%s*%%s*s!%w*!%s*" ":%s*%%s*s/%w*/%s*" "%s*s:%w*:%s*" ":%s*s!%w*!%s*" ":%s*s/%w*/%s*"];
          icon = "󱞪";
          lang = "regex";
        };
      };
      #presets = {
      #    bottom_search = true;
      #    command_palette = true;
      #    lsp_doc_border = true;
      #};
    };
  };
}
