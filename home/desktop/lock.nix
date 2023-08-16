{pkgs, ...}: {
  # swaylock-effects
  programs.swaylock = {
    enable = true;
    package = pkgs."swaylock-effects";
  };
}
