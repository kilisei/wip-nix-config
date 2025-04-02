{
  lib,
  pkgs,
  config,
  ...
}: {
  options = {
    kilisei.teams.enable = lib.mkEnableOption "";
  };

  config = lib.mkIf config.kilisei.teams.enable {
    home.packages = with pkgs; [
      teams
    ];
  };
}
