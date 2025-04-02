{
  lib,
  config,
  pkgs,
  ...
}: {
  options = {
    kilisei.pika-backup.enable = lib.mkEnableOption "";
  };

  config = lib.mkIf config.kilisei.pika-backup.enable {
    home.packages = with pkgs; [
      pika-backup
    ];
  };
}
