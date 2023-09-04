{
  inputs,
  outputs,
  pkgs,
  ...
}: {
  imports =
    [
      # modules/nixos
      # outputs.nixosModules.example
    ]
    ++ [
      # flakes
      inputs.impermanence.nixosModules.impermanence
    ]
    ++ [
      ./boot/filesystem.nix
      ./boot/grub.nix
      ./boot/howdy.nix
      ./boot/kernel.nix
      #./boot/persist.nix
      ./boot/secure.nix
      ./boot/splash.nix
    ]
    ++ [
      ./config/base.nix
      ./config/font.nix
      ./config/gc.nix
      ./config/locale.nix
      ./config/nixos.nix
      ./config/pkg.nix
      ./config/security.nix
      ./config/user.nix
    ]
    ++ [
      ./hardware/audio.nix
      ./hardware/base.nix
      ./hardware/bluetooth.nix
      ./hardware/cpu.nix
      ./hardware/gpu.nix
      ./hardware/input.nix
    ];

  environment = {
    systemPackages = [
      pkgs.nano
      pkgs.gnomeExtensions.kimpanel
    ];
  };
  services.v2raya.enable = true;

  boot.plymouth.enable = true;
  services.xserver = {
    enable = true;

    desktopManager = {
      gnome.enable = true;
    };

    displayManager = {
      gdm.enable = true;
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

  # 定位
  services.geoclue2.enable = true;
  location.provider = "geoclue2";

  services.gnome.gnome-keyring.enable = true;

  # zsh enableCompletion
  environment.pathsToLink = ["/share/zsh"];
}
