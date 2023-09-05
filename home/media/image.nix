{pkgs, ...}: {
  # feh imagemagick
  home.packages = with pkgs; [imagemagick feh];
}
