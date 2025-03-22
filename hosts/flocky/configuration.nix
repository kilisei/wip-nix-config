{
  config,
  pkgs,
  lib,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
    ../common
  ];

  system.stateVersion = "24.11";

  networking = {
    hostName = "flocky";
    networkmanager.enable = true;
  };

  users.users.kilisei = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
    initialPassword = "kilisei"; # TODO: Manage with sops
  };
}
