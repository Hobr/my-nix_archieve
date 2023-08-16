{pkgs, ...}: {
  # zsh
  # zsh-completions
  # zsh-syntax-highlighting
  # zsh-autosuggestions
  # powerlevel10k
  programs.zsh = {
    enable = true;
    zplug = {
      enable = true;
      plugins = [
        {
          name = "romkatv/powerlevel10k";
          tags = [as:theme];
        }
        {name = "Aloxaf/fzf-tab";}
        {name = "zdharma-continuum/fast-syntax-highlighting";}
        {name = "zsh-users/zsh-history-substring-search";}
        {name = "zsh-users/zsh-completions";}
        {name = "zsh-users/zsh-autosuggestions";}
        {name = "hlissner/zsh-autopair";}
        {name = "chisui/zsh-nix-shell";}
      ];
    };
    initExtra = ''
      source ~/.p10k.zsh
    '';
  };
}
