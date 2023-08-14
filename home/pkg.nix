{pkgs, ...}: {
  home.sessionVariables = {
    "NIXOS_OZONE_WL" = 1;
  };

  home.packages = with pkgs; [
    tree
    alejandra
    trash-cli
  ];

  programs.firefox = {
    enable = true;
  };

  services.gpg-agent.enable = {
    enable = true;
    enableSshSupport = true;
  };

  programs.git.enable = true;
  programs.ssh.enable = true;
  programs.gpg.enable = true;
}
