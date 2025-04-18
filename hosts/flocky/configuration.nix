{
  config,
  pkgs,
  lib,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ../common
    ../../modules/hosts/common/yubikey.nix
  ];

  kilisei.yubikey.enable = true;

  system.stateVersion = "24.11";

  users.users.kilisei = {
    isNormalUser = true;
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
    initialPassword = "kilisei";
  };
}
