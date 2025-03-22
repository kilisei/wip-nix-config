{pkgs,...}:{
  imports = [
    ./browser
    ./communication
    ./terminal
    ./editor
    ./git
    ./pika.nix
    ./monitoring.nix
  ];
}
