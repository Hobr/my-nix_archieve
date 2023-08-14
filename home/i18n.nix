{pkgs, ...}: {
  time.timeZone = "Asia/Shanghai";

  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-rime
      fcitx5-gtk
    ];
  };
}
