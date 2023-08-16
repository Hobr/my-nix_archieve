{
  fileSystems."/" = {
    device = "/dev/disk/by-uuid/70f2b7df-caf8-4ed0-bf1f-518ed072f24e";
    fsType = "ext4";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/C144-3BFB";
    fsType = "vfat";
  };

  fileSystems."/mnt/windows" = {
    device = "/dev/disk/by-uuid/28BAF5142169A897";
    fsType = "ntfs-3g";
  };

  fileSystems."/mnt/data" = {
    device = "/dev/disk/by-uuid/5A9C7E8B6EE23C3F";
    fsType = "ntfs-3g";
  };

  swapDevices = [];

  #fileSystems = {
  # tmpfs
  #  "/" = {
  #    device = "none";
  #    fsType = "tmpfs";
  #    options = ["defaults" "mode=755" "size=6G"];
  #  };

  #  "/home/hobr" = {
  #    device = "none";
  #    fsType = "tmpfs";
  #    options = ["defaults" "mode=777" "size=6G"];
  #  };

  # btrfs
  #  "/persist" = {
  #    device = "/dev/disk/by-uuid/9f4e2d7f-5bf7-4550-9c8f-3efb621edf05";
  #    fsType = "btrfs";
  #    options = ["subvol=persist" "compress=zstd" "ssd" "noatime" "nodiratime"];
  #    neededForBoot = true;
  #  };

  #  "/nix" = {
  #    device = "/dev/disk/by-uuid/9f4e2d7f-5bf7-4550-9c8f-3efb621edf05";
  #    fsType = "btrfs";
  #    options = ["subvol=nix" "compress=zstd" "ssd" "noatime" "nodiratime"];
  #  };

  # EFI
  #  "/boot" = {
  #    device = "/dev/disk/by-uuid/C144-3BFB";
  #    fsType = "vfat";
  #  };

  # NTFS
  #  "/mnt/windows" = {
  #    device = "/dev/disk/by-uuid/28BAF5142169A897";
  #    fsType = "ntfs-3g";
  #  };

  #  "/mnt/data" = {
  #    device = "/dev/disk/by-uuid/5A9C7E8B6EE23C3F";
  #    fsType = "ntfs-3g";
  #  };
  #};

  # 交换
  # swapDevices = [{device = "/dev/disk/by-uuid/8faba14d-01c4-4d75-9a19-7686e53d7836";}];

  boot.supportedFilesystems = ["btrfs" "ntfs"];

  # btrfs自动清理
  #services.btrfs.autoScrub = {
  #  enable = true;
  #  interval = "weekly";
  #  fileSystems = ["/persist" "/nix"];
  #};
}
