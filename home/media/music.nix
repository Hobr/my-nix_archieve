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
  };

  # ncmpcpp
  programs.ncmpcpp = {
    enable = true;
  };

  # neteats-cloud-music-gtk
  home.packages = [pkgs.netease-cloud-music-gtk];
}
