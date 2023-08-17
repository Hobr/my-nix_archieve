{pkgs, ...}: {
  # mpv
  programs = {
    mpv = {
      enable = true;
      defaultProfiles = ["gpu-hq"];
    };
  };

  # ffmpeg
  home.packages = with pkgs; [
    ffmpeg-full
  ];

  # Obs-Studio
  programs.obs-studio.enable = true;
}
