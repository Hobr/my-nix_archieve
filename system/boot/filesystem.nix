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

  boot.supportedFilesystems = ["ntfs"];
}
