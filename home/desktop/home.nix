{
  home = {
    username = "hobr";
    homeDirectory = "/home/hobr";
    stateVersion = "23.05";
    sessionVariables = {
      "NIXOS_OZONE_WL" = 1;
      "MOZ_ENABLE_WAYLAND" = 1;
    };
  };

  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";
}
