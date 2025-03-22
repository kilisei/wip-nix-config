{
  programs.ghostty = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      theme = "GruvboxDarkHard";
      font-family = "JetBrainsMono NF";
      # font-size = 12;
      keybind = [
        "ctrl+`=new_tab"
        "ctrl+left=next_tab"
        "ctrl+right=previous_tab"
      ];
    };
  };
}
