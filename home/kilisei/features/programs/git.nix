{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    kilisei.git.enable = lib.mkEnableOption "";
  };

  config = lib.mkIf config.kilisei.git.enable {
    home.packages = with pkgs; [
      difftastic
    ];

    programs.git = {
      enable = true;
      userName = "Kilisei";
      userEmail = "seitzkili+git@gmail.com";
      extraConfig = {
        init.defaultBranch = "main";
        push.autoSetupRemote = true;
        pull.rebase = true;
        rerere.enabled = true;
        diff.external = "difft";
        commit.gpgsign = true;
        user.signingKey = "66F94DE6D11A90F3";
      };
    };

    services.gpg-agent = {
      enable = true;
      pinentryPackage = pkgs.pinentry-gnome3;
    };

    programs.gpg = {
      enable = true;
    };
  };
}
