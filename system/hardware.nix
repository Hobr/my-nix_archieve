{pkgs, ...}: {
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  sound.enable = true;
  hardware.pulseaudio = {
    enable = true;
    support32Bit = true;
    package = pkgs.pulseaudioFull;
  };

  services.xserver.libinput.enable = true;
}
