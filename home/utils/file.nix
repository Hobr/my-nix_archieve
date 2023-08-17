{pkgs, ...}: {
  home.packages = with pkgs; [
    tree
    trash-cli

    ranger
    fd

    ripgrep
  ];

  programs = {
    exa.enable = true;
    bat.enable = true;
    fzf.enable = true;
    # ripgrep.enable = true;
  };

  # USB
  services.udiskie.enable = true;
}
