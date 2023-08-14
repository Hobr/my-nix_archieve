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

  services.v2raya.enable = true;
  services.ssh-agent.enable = true;
}
