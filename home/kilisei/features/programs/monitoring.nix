{ pkgs, ... }:
{
  home.packages = with pkgs; [
    cpu-x
    btop
    wrk
    fastfetch
    teams-for-linux
  ];
}
