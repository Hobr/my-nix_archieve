{pkgs, ...}: {
  security = {
    protectKernelImage = true;
    lockKernelModules = false;

    # RealtimeKit
    rtkit.enable = true;

    # 内核安全
    apparmor = {
      enable = true;
      killUnconfinedConfinables = true;
      packages = [pkgs.apparmor-profiles];
    };

    # sudo
    sudo = {
      enable = true;
      wheelNeedsPassword = false;
    };
  };
}
