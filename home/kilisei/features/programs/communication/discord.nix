{
  lib,
  pkgs,
  config,
  ...
}: {
  options = {
    kilisei.discord.enable = lib.mkEnableOption "";
  };

  config = lib.mkIf config.kilisei.discord.enable {
    home.packages = with pkgs; [
      discord
    ];
  };
}
