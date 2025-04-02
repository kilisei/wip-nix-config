{
  lib,
  config,
  pkgs,
  ...
}: {
  options = {
    kilisei.onlyoffice.enable = lib.mkEnableOption "";
  };

  config = lib.mkIf config.kilisei.onlyoffice.enable {
    home.packages = with pkgs; [
      onlyoffice-desktopeditors
    ];
  };
}
