{lib, ...}: {
  # NetworkManager
  networking = {
    hostName = "hobr-nixos";
    useDHCP = lib.mkDefault true;

    networkmanager = {
      enable = true;
      #dns = "systemd-resolved";
      wifi.powersave = true;
    };

    firewall = {
      enable = true;
      allowPing = false;
    };
  };

  #services.resolved.enable = true;
  systemd.services.NetworkManager.enable = true;
  systemd.services.NetworkManager-wait-online.enable = true;
  # NetworkManager-Applet
}
