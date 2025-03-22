{ pkgs, ... }:
{
  imports = [
    ./ghostty.nix
    ./zsh.nix
  ];

  # Move to utils.nix
  home.packages = with pkgs; [
    ripgrep
    bat
    fzf
    cbonsai
  ];
}
