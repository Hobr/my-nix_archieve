{pkgs, ...}: {
  # gpg-agent
  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
  };
  programs.ssh.enable = true;

  # gpg
  programs.gpg.enable = true;

  # GNU
  home.packages = with pkgs; [
    glib
    gnumake
    gnused
    gnutls
  ];
}
