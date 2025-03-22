{ config, pkgs, ... }:
{
  imports = [
    ./features
    ./style
  ];

  home = {
    stateVersion = "24.11";
    username = "kilisei";
    homeDirectory = "/home/kilisei";
  };

  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";
}
