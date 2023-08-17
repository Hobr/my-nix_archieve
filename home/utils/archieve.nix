{pkgs, ...}: {
  home.packages = with pkgs; [
    zip
    unzip
    unrar
    p7zip
    xz
  ];
}
