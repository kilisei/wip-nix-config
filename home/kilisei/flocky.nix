{
  config,
  pkgs,
  ...
}: {
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./features
    ./style
  ];

  kilisei.terminal = {
    ghostty.enable = true;
    zsh.enable = true;
    utils = {
      fzf.enable = true;
      ripgrep.enable = true;
      bat.enable = true;
      httpie.enable = true;
    };
  };

  kilisei.editor = {
    nvim.enable = true;
    zed.enable = true;
    vscode.enable = true;
  };

  kilisei.discord.enable = true;
  # kilisei.teams.enable = true;

  kilisei.git.enable = true;
  kilisei.lang.js.enable = true;

  kilisei.onlyoffice.enable = true;
  kilisei.pika-backup.enable = true;

  home = {
    stateVersion = "24.11";
    username = "kilisei";
    homeDirectory = "/home/kilisei";
  };

  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";
}
