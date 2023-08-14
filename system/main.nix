{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    # modules/nixos
    # outputs.nixosModules.example

    # flakes
    # inputs.hardware.nixosModules.common-cpu-amd
    # inputs.hardware.nixosModules.common-ssd

    # ./users.nix
    ./boot.nix
    ./desktop.nix
    ./hardware-configuration.nix
    ./hardware.nix
    ./i18n.nix
    ./network.nix
    ./nvidia.nix
    ./pkg.nix
  ];

  nixpkgs = {
    hostPlatform = "x86_64-linux";
    overlays = [
      # overlays\pkgs目录
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages

      # flakes
      # neovim-nightly-overlay.overlays.default

      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    config = {
      allowUnfree = true;
    };
  };

  nix = {
    registry = lib.mapAttrs (_: value: {flake = value;}) inputs;

    nixPath = lib.mapAttrsToList (key: value: "${key}=${value.to.path}") config.nix.registry;

    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 3d";
    };

    settings = {
      substituters = [
        "https://mirrors.sjtug.sjtu.edu.cn/nix-channels/store"
        "https://mirrors.ustc.edu.cn/nix-channels/store"
        "https://cache.nixos.org/"
      ];

      extra-substituters = [
        "https://nix-community.cachix.org"
        "https://hyprland.cachix.org"
      ];
      extra-trusted-public-keys = [
        "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
        "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
      ];

      experimental-features = "nix-command flakes";
      auto-optimise-store = true;
    };
  };

  networking.hostName = "hobr-nixos";

  users.users = {
    hobr = {
      isNormalUser = true;
      extraGroups = ["wheel" "networkmanager" "audio"];
    };
  };

  system.stateVersion = "23.05";
}
