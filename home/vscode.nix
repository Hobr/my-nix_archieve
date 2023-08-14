{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    enableUpdateCheck = false;
    package = pkgs.unstable.vscode;

    userSettings = {
      "files.autoSave" = "off";
      "[nix]"."editor.tabSize" = 2;
    };
  };
}
