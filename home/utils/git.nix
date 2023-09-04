{
  programs.git = {
    enable = true;
    lfs.enable = true;
    userName = "Hobr";
    userEmail = "mail@hobr.site";
    signing = {
      key = "DA2EF9FF208DC734";
      signByDefault = true;
    };
    extraConfig = {
      safe.directory = "*";
    };
  };
}
