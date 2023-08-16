{modulesPath, ...}: {
  imports = [(modulesPath + "/installer/scan/not-detected.nix")];

  # 驱动
  hardware.enableRedistributableFirmware = true;

  # fstrim
  services.fstrim.enable = true;

  # USB
  services.udiskie.enable = true;
}
