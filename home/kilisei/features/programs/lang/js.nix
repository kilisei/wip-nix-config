{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    kilisei.lang.js.enable = lib.mkEnableOption "";
  };

  config = lib.mkIf config.kilisei.lang.js.enable {
    home.packages = with pkgs; [
      nodejs_22
      corepack_22
      bun
    ];
  };
}
