{
  nix = {
    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 3d";
    };

    optimise.automatic = true;
    settings.auto-optimise-store = true;
  };
}
