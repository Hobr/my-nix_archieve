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
    ./boot/secure.nix
    ./boot/splash.nix

    ./config/base.nix
    ./config/font.nix
    ./config/gc.nix
    ./config/locale.nix
    ./config/nixos.nix
    ./config/pkg.nix
    ./config/security.nix
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

  services.xserver = {
    enable = true;

    desktopManager = {
      gnome.enable = true;
    };

    displayManager = {
      gdm.enable = true;
      autoLogin = {
        enable = true;
        user = "hobr";
      };
    };
  };

  security = {
    pam = {
      services = {
        lightdm.enableGnomeKeyring = true;
        login.enableGnomeKeyring = true;
      };
    };
    polkit.enable = true;
  };

  virtualisation = {
    docker = {
      enable = true;
      enableOnBoot = false;
      #enableNvidia = true;
    };
  };
}
