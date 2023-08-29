{
  # impermanence
  home.persistence."/persist/home/hobr" = {
    # removePrefixDirectory = true;
    allowOther = true;

    directories = [
      ".cache"
      ".config"
      ".gnupg"
      ".local/share"
      ".ssh"
      ".mozilla"
      
      "Desktop"
      "Documents"
      "Downloads"
      "Music"
      "Pictures"
      "Videos"
    ];

    files = [
      ".zsh_history"
    ];
  };
}
