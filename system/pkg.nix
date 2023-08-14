{
  environment = {
    systemPackages = with pkgs; [
      nano
      libva
      libva-utils
      glxinfo
      unstable.vscode
      gcc
      gnomeExtensions.kimpanel
    ];
  };
}
