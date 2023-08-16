{modulesPath, ...}: {
  imports = [(modulesPath + "/installer/scan/not-detected.nix")];

  # 驱动
  hardware.enableRedistributableFirmware = true;

  # fstrim
  services = {
    fstrim.enable = true;
    upower.enable = true;

    thermald.enable = true;

    power-profiles-daemon.enable = false;
    tlp = {
      enable = true;
      settings = {
        START_CHARGE_THRESH_BAT0 = 0;
        STOP_CHARGE_THRESH_BAT0 = 1;
        CPU_BOOST_ON_AC = 1;
        CPU_BOOST_ON_BAT = 0;
        CPU_SCALING_GOVERNOR_ON_AC = "performance";
        CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
      };
    };
  };
}
