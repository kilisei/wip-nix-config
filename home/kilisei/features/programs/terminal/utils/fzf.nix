{
  lib,
  config,
  ...
}: {
  options = {
    kilisei.terminal.utils.fzf.enable = lib.mkEnableOption "";
  };

  config = lib.mkIf config.kilisei.terminal.utils.fzf.enable {
    programs.fzf.enable = true;
  };
}
