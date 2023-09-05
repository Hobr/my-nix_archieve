{pkgs, ...}: {
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;
  environment.systemPackages = [pkgs.bluez-tools];
}
