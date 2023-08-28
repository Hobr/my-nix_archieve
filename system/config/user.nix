{pkgs, ...}: {
  users = {
    #mutableUsers = false;
    users = {
      hobr = {
        hashedPassword = "$y$j9T$Nvb.2rjLuQEmmk4fERwht/$h0dIoKOnQeo1QuElBm83LF/1TjTR4tOQWVZOzv87PP7";
        isNormalUser = true;
        shell = pkgs.zsh;
        extraGroups = [
          "wheel"
          "networkmanager"
          "audio"
          "video"
          "input"
          "network"
          "networkmanager"
          "docker"
          "git"
          "libvirtd"
        ];
      };
    };
  };
  environment.shells = with pkgs; [zsh];
  programs.zsh.enable = true;

  nix.settings = {
    # sudo可信
    allowed-users = ["root" "@wheel"];

    # nix可信
    trusted-users = ["root" "@wheel"];
  };
}
