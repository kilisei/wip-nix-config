{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:
{
  imports = [
    ../../modules/hosts/common/i18n.nix
    ../../modules/hosts/common/flakePath.nix
    ../../modules/hosts/common/gnome/debloat.nix
    ../../modules/hosts/common/networkmanager.nix
  ];

  boot.loader = {
    efi.canTouchEfiVariables = true;
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
      useOSProber = true;
    };
  };

  services = {
    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;

      xkb.layout = "us";
    };

    pulseaudio.enable = false;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };

  security.rtkit.enable = true;

  systemd.services = {
    "getty@tty1".enable = false;
    "autovt@tty1".enable = false;
  };
}
