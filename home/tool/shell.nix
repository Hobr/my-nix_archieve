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
        {name = "zsh-users/zsh-autosuggestions";}
        {name = "zsh-users/zsh-completions";}
        {name = "zsh-users/zsh-syntax-highlighting";}
        {name = "hlissner/zsh-autopair";}
        {name = "chisui/zsh-nix-shell";}
      ];
    };
    initExtra = ''
      source ~/.p10k.zsh
    '';
  };
}
