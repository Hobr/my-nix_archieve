{
  # luks

  #boot = {
  #  initrd = {
  # 加密
  #    luks.devices = {
  #      root = {
  #        device = "/dev/disk/by-uuid/e3188239-f080-4415-8b6a-dbcd2437cad6";
  #        preLVM = true;
  #      };
  #    };
  #  };
  #};

  security = {
    # shim

    # TPM
    tpm2 = {
      enable = true;
    };
  };
}
