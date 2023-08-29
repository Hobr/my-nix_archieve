{
  fileSystems = {
    # tmpfs
    "/" = {
      device = "none";
      fsType = "tmpfs";
      options = ["defaults" "mode=755" "size=6G"];
    };

    "/home/hobr" = {
      device = "none";
      fsType = "tmpfs";
      options = ["defaults" "mode=777" "size=6G"];
    };

    # btrfs
    "/persist" = {
      device = "/dev/disk/by-uuid/????";
      fsType = "btrfs";
      options = ["subvol=persist" "compress=zstd" "ssd"];
      neededForBoot = true;
    };

    "/nix" = {
      device = "/dev/disk/by-uuid/????";
      fsType = "btrfs";
      options = ["subvol=nix" "compress=zstd" "ssd"];
    };

    # EFI
    "/boot" = {
      device = "/dev/disk/by-uuid/C144-3BFB";
      fsType = "vfat";
    };

    # NTFS
    "/mnt/windows" = {
      device = "/dev/disk/by-uuid/28BAF5142169A897";
      fsType = "ntfs-3g";
    };

    "/mnt/data" = {
      device = "/dev/disk/by-uuid/5A9C7E8B6EE23C3F";
      fsType = "ntfs-3g";
    };
  };

  # 交换
  swapDevices = [{device = "/dev/disk/by-uuid/????";}];

  # 文件系统支持
  boot.supportedFilesystems = ["btrfs" "ntfs"];

  # btrfs自动清理
  services.btrfs.autoScrub = {
    enable = true;
    interval = "weekly";
    fileSystems = ["/persist" "/nix"];
  };

  # fuse
  programs.fuse.userAllowOther = true;
}
