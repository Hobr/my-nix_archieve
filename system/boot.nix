{
  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = true;
      };

      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        useOSProber = true;
      };
    };
  };

  boot.kernelParams = ["quiet"];
  boot.plymouth = {
    enable = true;
  };
}