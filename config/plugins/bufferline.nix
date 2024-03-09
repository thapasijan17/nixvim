{
  plugins.bufferline = {
    enable = true;
    separatorStyle = "thin"; # “slant”, “padded_slant”, “slope”, “padded_slope”, “thick”, “thin”
    offsets = [ { filetype = "NvimTree"; text = "File Explorer"; text_align = "left"; } ];
    indicator.icon = "▎";
    modifiedIcon = "●";
    bufferCloseIcon = "";
    closeIcon = "";
    leftTruncMarker = "";
    rightTruncMarker = "";
    numbers = "ordinal";
    tabSize = 21;
    diagnostics = true;
    diagnosticsUpdateInInsert = false;
    showBufferIcons = true;
    showBufferCloseIcons = false;
  };
}
