{
  lib,
  modulesPath,
  ...
}: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  boot.initrd.availableKernelModules = ["xhci_pci" "thunderbolt" "ahci" "nvme" "usbhid" "usb_storage" "sd_mod"];
  boot.initrd.kernelModules = [];
  boot.kernelModules = ["kvm-intel"];
  boot.extraModulePackages = [];
  boot.supportedFilesystems = ["ntfs"];
  boot.tmp.useTmpfs = true;

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

  powerManagement.cpuFreqGovernor = lib.mkDefault "powerformance";
  hardware.cpu.intel.updateMicrocode = true;
  hardware.enableRedistributableFirmware = true;
}
