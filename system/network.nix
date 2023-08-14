{
  networking = {
    useDHCP = lib.mkDefault true;

    networkmanager = {
      enable = true;
      dns = "systemd-resolved";
      wifi.powersave = true;
    };

    firewall = {
      enable = true;
      allowPing = false;
    };
  };

  systemd.services.NetworkManager.enable = true;
  services.resolved.enable = true;
  systemd.services.NetworkManager-wait-online.enable = false;
}
