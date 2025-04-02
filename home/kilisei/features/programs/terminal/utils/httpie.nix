{
  lib,
  config,
  pkgs,
  ...
}: {
  options = {
    kilisei.terminal.utils.httpie.enable = lib.mkEnableOption "";
  };

  config = lib.mkIf config.kilisei.terminal.utils.httpie.enable {
    home.packages = with pkgs; [
      httpie
    ];
  };
}
