{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      nano
      libva
      libva-utils
      glxinfo
      gnomeExtensions.kimpanel
    ];
  };

  services.v2raya.enable = true;
}
