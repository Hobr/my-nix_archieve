{
  fileSystems = {
    # tmpfs
    #"/" = {
    #  device = "none";
    #  fsType = "tmpfs";
    #  options = ["defaults" "mode=755" "size=6G"];
    #};

    #"/home/hobr" = {
    #  device = "none";
    #  fsType = "tmpfs";
    #  options = ["defaults" "mode=777" "size=6G"];
    #};

    # btrfs
    #"/persist" = {
    #  device = "/dev/disk/by-label/NixOS";
    #  fsType = "btrfs";
    #  options = ["subvol=persist" "compress=zstd" "ssd"];
    #  neededForBoot = true;
    #};

    "/" = {
      device = "/dev/disk/by-label/NixOS";
      fsType = "btrfs";
      options = ["subvol=root" "compress=zstd" "ssd"];
    };

    "/home" = {
      device = "/dev/disk/by-label/NixOS";
      fsType = "btrfs";
      options = ["subvol=home" "compress=zstd" "ssd"];
    };

    "/nix" = {
      device = "/dev/disk/by-label/NixOS";
      fsType = "btrfs";
      options = ["subvol=nix" "compress=zstd" "ssd"];
    };

    # EFI
    "/boot" = {
      device = "/dev/disk/by-path/pci-0000:2f:00.0-nvme-1-part1";
      fsType = "vfat";
    };

    # NTFS
    "/mnt/windows" = {
      device = "/dev/disk/by-label/Windows";
      fsType = "ntfs-3g";
    };

    "/mnt/data" = {
      device = "/dev/disk/by-label/Data";
      fsType = "ntfs-3g";
    };
  };

  # 交换
  swapDevices = [{device = "/dev/disk/by-label/Swap";}];

  # 文件系统支持
  boot.supportedFilesystems = ["btrfs" "ntfs"];

  # btrfs自动清理
  services.btrfs.autoScrub = {
    enable = true;
    interval = "weekly";
    #fileSystems = ["/persist" "/nix"];
    fileSystems = ["/" "/nix" "/home"];
  };

  # fuse
  programs.fuse.userAllowOther = true;
}
