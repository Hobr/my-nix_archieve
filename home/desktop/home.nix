{
  home = {
    username = "hobr";
    homeDirectory = "/home/hobr";
    stateVersion = "23.05";
    sessionVariables = {
      "MOZ_ENABLE_WAYLAND" = 1;
    };
  };

  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";
}
