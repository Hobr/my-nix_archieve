{pkgs, ...}: {
  # Fcitx5
  # Fcitx5-rime
  # fcitx-moegirl
  # fcitx-zhwiki
  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-rime
      fcitx5-gtk
    ];
  };
  # rime-ice
}
