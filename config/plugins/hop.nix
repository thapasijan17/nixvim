{pkgs, ...}:
{
  extraPlugins = with pkgs.vimPlugins; [
    hop-nvim
  ];
  extraConfigLua = ''
    local hop = require("hop")
    -- you can configure Hop the way you like here; see :h hop-config
    hop.setup({
      -- keys = 'etovxqpdygfblzhckisuran', -- bépo layout
    })
  '';
  keymaps = [
    {
      #mode = [ "" ];
      action = "<CMD>lua require('hop').hint_words()<CR>";
      key = "<leader>hw";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      #mode = [ "" ];
      action = "<CMD>lua require('hop').hint_char2()<CR>";
      key = "<leader>hc";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      #mode = [ "" ];
      action = "<CMD>lua require('hop').hint_lines_skip_whitespace()<CR>";
      key = "<leader>gl";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      #mode = [ "" ];
      action = "<CMD>lua require('hop').hint_char1({ direction = require('hop.hint').HintDirection.AFTER_CURSOR, current_line_only = true })<CR>";
      key = "<leader>f";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      #mode = [ "" ];
      action = "<CMD>lua require('hop').hint_char1({ direction = require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = true })<CR>";
      key = "<leader>F";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      #mode = [ "" ];
      action = "<CMD>lua require('hop').hint_char1({ direction = require('hop.hint').HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<CR>";
      key = "<leader>t";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      #mode = [ "" ];
      action = "<CMD>lua require('hop').hint_char1({ direction = require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<CR>";
      key = "<leader>T";
      options = {
        silent = true;
        noremap = true;
      };
    }
  ];
}
