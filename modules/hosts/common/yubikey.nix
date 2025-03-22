{ pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    yubioath-flutter
    pam_u2f
    yubikey-manager
  ];

  services = {
    pcscd = {
      enable = true;
      plugins = [ pkgs.ccid ];
    };
    udev.packages = [ pkgs.yubikey-personalization ];

    yubikey-agent.enable = true;
  };

  security.pam = {
    sshAgentAuth.enable = true;
    u2f = {
      enable = true;
    };

    services = {
      login.u2fAuth = true;
      sudo = {
        u2fAuth = true;
        sshAgentAuth = true;
      };
    };
  };
}
