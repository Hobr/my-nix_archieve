{pkgs, ...}: {
  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
  };
  programs.ssh.enable = true;

  # gpg
  programs.gpg.enable = true;

  # gpg-agent

  # glib
  # gnumake
  # gnused
  # gnutls
  home.packages = with pkgs; [
    glib
    gnumake
    gnused
    gnutls
  ];
}
