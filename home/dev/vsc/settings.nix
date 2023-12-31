{
  programs.vscode.userSettings = {
    "explorer.confirmDelete" = false;
    "workbench.startupEditor" = "newUntitledFile";
    "files.autoSave" = "onFocusChange";
    "editor.renderWhitespace" = "all";
    "editor.minimap.showSlider" = "always";
    "breadcrumbs.enabled" = true;
    "terminal.integrated.copyOnSelection" = true;
    "git.autofetch" = true;
    "editor.renderControlCharacters" = true;
    "diffEditor.ignoreTrimWhitespace" = false;
    "editor.wordWrap" = "on";
    "explorer.confirmDragAndDrop" = false;
    "git.enableSmartCommit" = true;
    "terminal.integrated.cursorStyle" = "line";
    "terminal.integrated.cursorBlinking" = true;
    "terminal.integrated.enableBell" = true;
    "git.confirmSync" = false;
    "editor.suggestSelection" = "first";
    "vsintellicode.modify.editor.suggestSelection" = "automaticallyOverrodeDefaultValue";
    "extensions.ignoreRecommendations" = true;
    "diffEditor.maxComputationTime" = 0;
    "ruby.format" = "rubocop";
    "eslint.format.enable" = true;
    "python.languageServer" = "Pylance";
    "editor.cursorSmoothCaretAnimation" = "on";
    "window.titleBarStyle" = "custom";
    "redhat.telemetry.enabled" = true;
    "editor.inlineSuggest.enabled" = true;
    "security.workspace.trust.untrustedFiles" = "open";
    "editor.unicodeHighlight.nonBasicASCII" = false;
    "editor.minimap.autohide" = true;
    "stylua.styluaPath" = "/usr/sbin/stylua";
    "editor.inlineSuggest.showToolbar" = "always";
    "window.menuBarVisibility" = "compact";
    "editor.formatOnType" = false;

    # 字体
    "editor.fontFamily" = "Monoid";
    "editor.fontSize" = 16;

    "terminal.integrated.fontFamily" = "MesloLGS NF";
    "terminal.integrated.fontSize" = 14;

    # 主题
    "workbench.colorTheme" = "Catppuccin Latte";
    "workbench.iconTheme" = "catppuccin-latte";
    "workbench.productIconTheme" = "fluent-icons";

    # Formatter
    "[css]" = {
      "editor.defaultFormatter" = "esbenp.prettier-vscode";
    };
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
}
