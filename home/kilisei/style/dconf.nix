{ pkgs, ... }:
rec {
  home.packages = with pkgs.gnomeExtensions; [
    blur-my-shell
  ];

  dconf.settings = {
    "org/gnome/desktop/background" = {
      "picture-uri" = "file://${../assets/wallpaper.jpg}";
      "picture-uri-dark" = "file://${../assets/wallpaper.jpg}";
      "picture-options" = "zoom";
    };
    "org/gnome/desktop/interface" = {
      "color-scheme" = "prefer-dark";
    };
    "org/gnome/shell".enabled-extensions = map (extension: extension.extensionUuid) home.packages;
  };
}
