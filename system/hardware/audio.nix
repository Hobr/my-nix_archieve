{pkgs, ...}: {
  sound.enable = true;

  # pipewire
  services.pipewire = {
    enable = true;
    wireplumber.enable = true;
    pulse.enable = true;
    jack.enable = true;

    alsa = {
      enable = true;
      support32Bit = true;
    };
  };

  # pulseaudio
  hardware.pulseaudio.enable = false;

  # pavucontrol
  environment.systemPackages = with pkgs; [pamixer pavucontrol];
}
