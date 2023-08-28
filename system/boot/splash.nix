{
  # plymouth
  boot.plymouth.enable = true;

  # lightdm
  #services.xserver.displayManager.lightdm = {
  #  enable = true;
  #};

  boot.initrd.systemd.enable = true;
}
