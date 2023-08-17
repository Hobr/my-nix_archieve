{pkgs, ...}: {
  programs.zsh = {
    enable = true;

    enableAutosuggestions = true;
    enableCompletion = true;
    enableSyntaxHighlighting = true;

    zplug = {
      enable = true;
      plugins = [
        {
          name = "romkatv/powerlevel10k";
          tags = [as:theme];
        }
        {name = "hlissner/zsh-autopair";}
        {name = "chisui/zsh-nix-shell";}
        {name = "Aloxaf/fzf-tab";}
      ];
    };
    initExtra = ''
      source ~/.p10k.zsh
    '';
  };
}
