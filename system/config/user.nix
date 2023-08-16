{
  users.users = {
    hobr = {
      isNormalUser = true;
      extraGroups = ["wheel" "networkmanager" "audio"];
    };
  };

  nix.settings = {
    # sudo可信
    allowed-users = ["root" "@wheel"];

    # nix可信
    trusted-users = ["root" "@wheel"];
  };
}
