{
  pkgs,
  config,
  ...
}: {
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
    extraPackages = with pkgs; [
      nvidia-vaapi-driver
      vaapiVdpau
      libvdpau-va-gl
    ];
  };

  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = {
    modesetting.enable = true;
    open = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  # 背光
  hardware.brillo.enable = true;

  services = {
    clight = {
      enable = true;
      settings = {
        verbose = true;
        backlight.disabled = true;
        dpms.timeouts = [900 300];
        dimmer.timeouts = [870 270];
        gamma.long_transition = false;
        screen.disabled = true;
      };
    };
  };
}
