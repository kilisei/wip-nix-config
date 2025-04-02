{
  lib,
  config,
  pkgs,
  ...
}: {
  options = {
    kilisei.monitoring.enable = lib.mkEnableOption "";
  };

  config = lib.mkIf config.kilisei.monitoring.enable {
    home.packages = with pkgs; [
      cpu-x
      btop
      wrk
      fastfetch
    ];
  };
}
