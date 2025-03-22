{ config, pkgs, ... }:
{
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";

  imports = [
    ./features/programs/terminal/ghostty.nix
    ./features/programs/browser
    ./features/programs/communication
  ];

  home.username = "kilisei";
  home.homeDirectory = "/home/kilisei";
}
