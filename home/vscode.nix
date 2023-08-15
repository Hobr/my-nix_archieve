{
  pkgs,
  inputs,
  ...
}: {
  programs.vscode = {
    enable = true;
    package = pkgs.unstable.vscode;

    enableUpdateCheck = false;

    #extensions = inputs.nix-vscode-extensions.extensions.x86_64-linux.open-vsx (import ./vscode/extensions.nix).ext;

    userSettings = (import ./vscode/settings.nix).userSettings;
  };
}
