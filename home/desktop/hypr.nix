{pkgs, ...}: {
  # Hyprland
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    enableNvidiaPatches = true;
  };

  # Hyprpaper
  home.packages = [pkgs.hyprpaper];
  # Hyprload
  ## Hypr-empty
  ## hyprfocus
}
