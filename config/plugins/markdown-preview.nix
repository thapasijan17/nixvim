{
  plugins.markdown-preview = {
    enable = true;
    settings = {
      auto_close = true;
      # auto_start = true;
      page_title = "「\${name}」";
      port = "8080";
      preview_options = {
        disable_filename = true;
        disable_sync_scroll = true;
        sync_scroll_type = "middle";
      };
      theme = "dark";
    };
  };
}
