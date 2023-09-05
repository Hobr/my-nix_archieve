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

  services.v2raya.enable = true;

  security = {
    pam = {
      services = {
        # gdm.enableGnomeKeyring = true;
        login.enableGnomeKeyring = true;
      };
    };
    polkit.enable = true;
  };

  virtualisation = {
    docker = {
      enable = true;
      enableOnBoot = false;
      enableNvidia = true;
    };
  };

  # 定位
  services.geoclue2.enable = true;
  location.provider = "geoclue2";

  # zsh enableCompletion
  environment.pathsToLink = ["/share/zsh"];
}
