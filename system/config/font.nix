{pkgs, ...}: {
  # Nerd fonts
  # Noto fonts
  fonts = {
    fontDir.enable = true;
    fonts = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      source-han-sans
      source-han-serif
      sarasa-gothic
      source-code-pro
      hack-font
      jetbrains-mono
      meslo-lgs-nf
      nerdfonts
    ];
    fontconfig = {
      defaultFonts = {
        emoji = ["Noto Color Emoji"];
        monospace = [
          "Noto Sans Mono CJK SC"
          "Sarasa Mono SC"
          "DejaVu Sans Mono"
        ];
        sansSerif = [
          "Noto Sans CJK SC"
          "Source Han Sans SC"
          "DejaVu Sans"
        ];
        serif = [
          "Noto Serif CJK SC"
          "Source Han Serif SC"
          "DejaVu Serif"
        ];
      };
      allowBitmaps = false;
    };
  };
}
