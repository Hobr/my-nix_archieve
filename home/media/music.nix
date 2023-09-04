{pkgs, ...}: {
  # mpd
  services.mpd = {
    enable = true;
    extraConfig = ''
      audio_output {
        type "pipewire"
        name "My PipeWire Output"
      }
    '';
    musicDirectory = "/home/hobr/音乐";
  };

  # ncmpcpp
  programs.ncmpcpp = {
    enable = true;
  };

  # neteats-cloud-music-gtk
  ## rust bug
  #home.packages = [pkgs.netease-cloud-music-gtk];
}
