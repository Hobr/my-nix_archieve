{pkgs, ...}: {
  home.packages = with pkgs; [
    tree
    trash-cli
  ];
  # bat
  # ranger
  # ripgrep
  # fd
  # exa
  # fzf

  # USB
  services.udiskie.enable = true;
}
