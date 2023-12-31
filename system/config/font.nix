{pkgs, ...}: {
  # Nerd fonts
  # Noto fonts
  fonts = {
    fontDir.enable = true;
    fonts = with pkgs; [
      material-design-icons
      font-awesome

      noto-fonts
      noto-fonts-cjk
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-emoji
      noto-fonts-extra

      source-sans
      source-serif
      source-han-sans
      source-han-serif

      fira-code
      jetbrains-mono
      monoid
      meslo-lgs-nf
      sarasa-gothic
    ];

    fontconfig = {
      defaultFonts = {
        serif = [
          "Source Han Serif"
          "Source Serif"
          "Noto Serif"
          "Noto Color Emoji"
        ];

        sansSerif = [
          "Source Han Sans"
          "Source Sans"
          "Noto Sans"
          "Noto Color Emoji"
        ];

        monospace = [
          "Sarasa Mono SC"
          "JetBrainsMono Nerd Font"
          "Noto Color Emoji"
        ];

        emoji = ["Noto Color Emoji"];
      };
      # allowBitmaps = false;
    };
  };
}
