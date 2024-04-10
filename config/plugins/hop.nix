{
  plugins.hop = {
    enable = true;
    settings = {
      case_insensitive = false;
      dim_unmatched = true;
      # direction = "require'hop.hint'.HintDirection.BEFORE_CURSOR";
      hint_position = "require'hop.hint'.HintPosition.BEGIN";
      hint_type = "require'hop.hint'.HintType.OVERLAY";
      jump_on_sole_occurrence = true;
      # keys = "asdghklqwertyuiopzxcvbnmfj"; # Default layout
      # keys = "etovxqpdygfblzhckisuran"; # bépo layout
      quit_key = "<Esc>";
      reverse_distribution = false;
      teasing = true;
      virtual_cursor = true;
      x_bias = 10;
    };
  };
  keymaps = [
    {
      #mode = [ "" ];
      action = "<CMD>lua require('hop').hint_words()<CR>";
      key = "<leader>hw";
      options = {
        silent = true;
        remap = true;
      };
    }
    {
      #mode = [ "" ];
      action = "<CMD>lua require('hop').hint_char2()<CR>";
      key = "<leader>hc";
      options = {
        silent = true;
        remap = true;
      };
    }
    {
      #mode = [ "" ];
      action = "<CMD>lua require('hop').hint_lines_skip_whitespace()<CR>";
      key = "<leader>hl";
      options = {
        silent = true;
        remap = true;
      };
    }
    {
      #mode = [ "" ];
      action = "<CMD>lua require('hop').hint_char1({ direction = require('hop.hint').HintDirection.AFTER_CURSOR, current_line_only = true })<CR>";
      key = "f";
      options = {
        silent = true;
        remap = true;
      };
    }
    {
      #mode = [ "" ];
      action = "<CMD>lua require('hop').hint_char1({ direction = require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = true })<CR>";
      key = "F";
      options = {
        silent = true;
        remap = true;
      };
    }
    {
      #mode = [ "" ];
      action = "<CMD>lua require('hop').hint_char1({ direction = require('hop.hint').HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<CR>";
      key = "t";
      options = {
        silent = true;
        remap = true;
      };
    }
    {
      #mode = [ "" ];
      action = "<CMD>lua require('hop').hint_char1({ direction = require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<CR>";
      key = "T";
      options = {
        silent = true;
        remap = true;
      };
    }
  ];
}
