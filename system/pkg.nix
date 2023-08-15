{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      nano
      libva
      libva-utils
      glxinfo
      gcc
      gnomeExtensions.kimpanel
      neofetch
      lolcat
    ];
  };

  services.v2raya.enable = true;
}
