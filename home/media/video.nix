{pkgs, ...}: {
  # mpv

  # ffmpeg
  home.packages = with pkgs; [
    ffmpeg-full
  ];
}
