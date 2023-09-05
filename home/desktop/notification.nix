{pkgs, ...}: {
  # dunst
  services.dunst = {
    enable = true;
  };

  # avizo
  home.packages = with pkgs; [libnotify avizo];
}
