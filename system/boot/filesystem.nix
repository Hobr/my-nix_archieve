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
      device = "/dev/disk/by-uuid/850383fe-1580-4b12-9ae9-8e22b587601a";
      fsType = "btrfs";
      options = ["subvol=persist" "compress=zstd" "ssd" "noatime" "nodiratime"];
      neededForBoot = true;
    };

    "/nix" = {
      device = "/dev/disk/by-uuid/850383fe-1580-4b12-9ae9-8e22b587601a";
      fsType = "btrfs";
      options = ["subvol=nix" "compress=zstd" "ssd" "noatime" "nodiratime"];
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
  swapDevices = [{device = "/dev/disk/by-uuid/06faedbc-e2fa-4a69-a557-e3a1756452e8";}];

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
