{
  lib,
  config,
  ...
}: {
  options = {
    kilisei.terminal.utils.bat.enable = lib.mkEnableOption "";
  };

  config = lib.mkIf config.kilisei.terminal.utils.bat.enable {
    programs.bat.enable = true;
    home.shellAliases.cat = "bat";
  };
}
