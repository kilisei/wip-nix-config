{
  lib,
  config,
  ...
}: {
  options = {
    kilisei.terminal.utils.ripgrep.enable = lib.mkEnableOption "";
  };

  config = lib.mkIf config.kilisei.terminal.utils.ripgrep.enable {
    programs.ripgrep.enable = true;
  };
}
