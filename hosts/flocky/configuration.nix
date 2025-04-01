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
    ../../modules/hosts/common/yubikey.nix
  ];

  system.stateVersion = "24.11";

  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };

  users.users.kilisei = {
    isNormalUser = true;
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "docker"
    ];
    initialPassword = "kilisei"; # TODO: Manage with sops
  };
}
