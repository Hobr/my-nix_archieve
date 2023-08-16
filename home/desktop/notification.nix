{pkgs, ...}: {
  home.packages = with pkgs; [libnotify];
  # dunst
  services.dunst = {
    enable = true;
  };
  # avizo
}
