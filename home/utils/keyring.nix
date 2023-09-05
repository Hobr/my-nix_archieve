{pkgs, ...}: {
  # GNome-keyring
  services.gnome-keyring.enable = true;

  # Authy, polkit-gnome
  home.packages = with pkgs; [ polkit_gnome authy ];
}
