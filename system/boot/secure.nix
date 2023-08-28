{pkgs, ...}: {
  # luks
  boot = {
    initrd = {
      luks.devices = {
        root = {
          device = "/dev/disk/by-uuid/289a1eb9-8b91-46d8-b540-8f3a5d4594f5";
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
