{pkgs, ...}: {
  imports = [
    ./vscode/extensions.nix
    ./vscode/settings.nix
  ];

  programs.vscode = {
    enable = true;
    package = pkgs.unstable.vscode;

    enableUpdateCheck = false;
    enableExtensionUpdateCheck = false;

    #userSettings = (import ./vscode/settings.nix).userSettings;
    #extensions = (import ./vscode/extensions.nix).extensions;
  };
}
