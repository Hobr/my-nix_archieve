{pkgs, ...}: {
  imports = [
    # modules/nixos
    # outputs.nixosModules.example

    # flakes
    # inputs.hardware.nixosModules.common-cpu-amd
    # inputs.hardware.nixosModules.common-ssd

    ./boot/filesystem.nix
    ./boot/grub.nix
    ./boot/howdy.nix
    ./boot/kernel.nix
    ./boot/persist.nix
    ./boot/secureboot.nix
    ./boot/splash.nix

    ./config/base.nix
    ./config/gc.nix
    ./config/locale.nix
    ./config/nixos.nix
    ./config/pkg.nix
    ./config/user.nix

    ./hardware/audio.nix
    ./hardware/base.nix
    ./hardware/bluetooth.nix
    ./hardware/cpu.nix
    ./hardware/gpu.nix
    ./hardware/input.nix
    ./hardware/network.nix
  ];

  environment = {
    systemPackages = with pkgs; [
      nano
      libva
      libva-utils
      glxinfo
      gnomeExtensions.kimpanel
    ];
  };

  services.v2raya.enable = true;

  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
}
