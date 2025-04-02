{pkgs, ...}: {
  imports = [
    ./ghostty.nix
    ./zsh.nix
    ./utils
  ];
}
