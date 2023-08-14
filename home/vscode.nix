{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    enableUpdateCheck = false;
    package = pkgs.unstable.vscode;

    userSettings = {
      "explorer.confirmDelete" = false;
      "workbench.startupEditor" = "newUntitledFile";
      "npm.packageManager" = "yarn";
      "files.autoSave" = "onFocusChange";
      "editor.renderWhitespace" = "all";
      "editor.minimap.showSlider" = "always";
      "breadcrumbs.enabled" = true;
      "terminal.integrated.copyOnSelection" = true;
      "git.autofetch" = true;
      "editor.renderControlCharacters" = true;
      "diffEditor.ignoreTrimWhitespace" = false;
      "editor.wordWrap" = "on";
      "editor.fontFamily" = "CaskaydiaCove Nerd Font Mono";
      "explorer.confirmDragAndDrop" = false;
      "git.enableSmartCommit" = true;
      "terminal.integrated.cursorStyle" = "line";
      "terminal.integrated.cursorBlinking" = true;
      "terminal.integrated.enableBell" = true;
      "git.confirmSync" = false;
      "editor.suggestSelection" = "first";
      "vsintellicode.modify.editor.suggestSelection" = "automaticallyOverrodeDefaultValue";
      "extensions.ignoreRecommendations" = false;
      "diffEditor.maxComputationTime" = 0;
      "ruby.format" = "rubocop";
      "eslint.format.enable" = true;
      "eslint.validate" = [
        "javascript"
        "javascriptreact"
        "vue"
        "typescript"
        "typescriptreact"
      ];
      "python.languageServer" = "Pylance";
      "editor.fontSize" = 16;
      "editor.cursorSmoothCaretAnimation" = "on";
      "workbench.colorTheme" = "Catppuccin Latte";
      "window.titleBarStyle" = "custom";
      "terminal.integrated.fontFamily" = "CaskaydiaCove Nerd Font Mono";
      "redhat.telemetry.enabled" = true;
      "editor.inlineSuggest.enabled" = true;
      "security.workspace.trust.untrustedFiles" = "open";
      "terminal.integrated.fontSize" = 12.5;
      "editor.unicodeHighlight.nonBasicASCII" = false;
      "editor.minimap.autohide" = true;
      "stylua.styluaPath" = "/usr/sbin/stylua";
      "editor.inlineSuggest.showToolbar" = "always";
      "window.menuBarVisibility" = "compact";
      "workbench.iconTheme" = "catppuccin-latte";
      "workbench.productIconTheme" = "fluent-icons";

      "[css]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "editor.formatOnType" = false;
      "[cpp]" = {
        "editor.defaultFormatter" = "ms-vscode.cpptools";
      };
      "[jsonc]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "[json]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "[c]" = {
        "editor.defaultFormatter" = "ms-vscode.cpptools";
      };
      "[html]" = {
        "editor.defaultFormatter" = "vscode.html-language-features";
      };
      "[javascript]" = {
        "editor.defaultFormatter" = "vscode.typescript-language-features";
      };
      "[yaml]" = {
        "editor.defaultFormatter" = "redhat.vscode-yaml";
      };
      "[lua]" = {
        "editor.defaultFormatter" = "JohnnyMorganz.stylua";
      };
      "[markdown]" = {
        "editor.defaultFormatter" = "DavidAnson.vscode-markdownlint";
      };
    };
  };
}
