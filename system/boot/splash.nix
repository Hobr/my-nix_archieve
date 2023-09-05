{
  # plymouth
  boot.plymouth.enable = true;

  # gdm
  services.xserver = {
    enable = true;
    displayManager = {
      gdm = {
        enable = true;
      };
    };
  };

  boot.initrd.systemd.enable = true;
}
