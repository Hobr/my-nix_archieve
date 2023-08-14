{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      nano
      libva
      libva-utils
      glxinfo
      gcc
      gnomeExtensions.kimpanel
    ];
  };

  services.v2raya.enable = true;
}
