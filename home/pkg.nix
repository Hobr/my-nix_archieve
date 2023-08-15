{pkgs, ...}: {
  home.sessionVariables = {
    "NIXOS_OZONE_WL" = 1;
    "MOZ_ENABLE_WAYLAND" = 1;
  };

  home.packages = with pkgs; [
    tree
    alejandra
    trash-cli

    neofetch
    lolcat

    ffmpeg-full
    gcc
    glib
    gnumake
    gnuplot
    gnused
    gnutls
    imagemagick
    inotify-tools
    libappindicator
    libcanberra-gtk3
    libgudev
    libnotify
    libsecret
    librsvg
    libtool
    pulseaudio
    zlib
  ];

  programs.firefox = {
    enable = true;
  };

  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
  };

  programs.git.enable = true;
  programs.ssh.enable = true;
  programs.gpg.enable = true;
}
