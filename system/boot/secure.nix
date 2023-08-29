{pkgs, ...}: {
  # luks
  boot = {
    initrd = {
      luks.devices = {
        root = {
          device = "/dev/disk/by-uuid/????";
          preLVM = true;
        };
      };
    };
  };

  security = {
    # TPM
    tpm2 = {
      enable = true;
    };
  };

  # shim
  environment.systemPackages = [pkgs.shim-unsigned];
}
