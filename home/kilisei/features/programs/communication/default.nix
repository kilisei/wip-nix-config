{ pkgs, ... }:
{
  home.packages = with pkgs; [
    discord
    onlyoffice-desktopeditors
    traceroute
  ];
}
