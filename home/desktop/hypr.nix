{pkgs, ...}: {
  # Hyprland
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    enableNvidiaPatches = true;
    systemdIntegration = true;
  };

  # Hyprpaper
  home.packages = [pkgs.hyprpaper];

  # Hyprload
  ## Hypr-empty
  ## hyprfocus
}
