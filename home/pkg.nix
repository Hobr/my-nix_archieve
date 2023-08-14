{pkgs, ...}: {
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  home.packages = with pkgs; [
    tree
    alejandra
    trash-cli
  ];

  programs.firefox = {
    enable = true;
    languagePacks = ["zh-CN"];
  };

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  programs.git.enable = true;

  services.v2raya.enable = true;
  services.openssh.enable = true;
}
