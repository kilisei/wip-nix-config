{
  lib,
  config,
  ...
}: {
  options = {
    kilisei.terminal.zsh.enable = lib.mkEnableOption "";
  };

  config = lib.mkIf config.kilisei.terminal.zsh.enable {
    programs.zsh = {
      enable = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      enableCompletion = true;
      shellAliases = {
        g = "git";
        gaa = "git add -A";
        gp = "git push";
      };
      oh-my-zsh = {
        enable = true;
        theme = "robbyrussell";
      };
    };
  };
}
