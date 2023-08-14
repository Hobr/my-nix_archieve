{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    package = pkgs.unstable.vscode;

    enableUpdateCheck = false;

    extensions =
      pkgs.vscode-utils.extensionsFromVscodeMarketplace
      (import ./vscode/extensions.nix).extensions;

    userSettings = inputs.nix-vscode-extensions.extensions.${system} (import ./vscode/settings.nix).userSettings;
  };
}
