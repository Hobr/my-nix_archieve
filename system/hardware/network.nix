{lib, ...}: {
  # NetworkManager
  networking = {
    hostName = "hobr-nixos";
    useDHCP = lib.mkDefault true;

    networkmanager = {
      enable = true;
      dns = "systemd-resolved";
      wifi = {
        powersave = true;
        macAddress = "random";
      };
    };

    firewall = {
      enable = true;
      allowPing = false;
    };
  };

  services.resolved.enable = true;
  systemd.services.NetworkManager.enable = true;
  systemd.services.NetworkManager-wait-online.enable = false;

  # NetworkManager-Applet
  environment.systemPackages = [pkgs.networkmanagerapplet];
}
