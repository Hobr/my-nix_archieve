{pkgs, ...}: {
  # luks
  boot = {
    initrd = {
      luks.devices = {
        root = {
          device = "/dev/disk/by-path/pci-0000:02:00.0-nvme-1-part1";
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
