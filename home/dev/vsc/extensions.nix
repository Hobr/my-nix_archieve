{
  pkgs,
  inputs,
  ...
}: let
  marketplace-extensions = with inputs.nix-vscode-extensions.extensions.${pkgs.system}.vscode-marketplace; [
    # Language
    batisteo.vscode-django
    bbenoist.nix
    castwide.solargraph
    davidanson.vscode-markdownlint
    dbaeumer.vscode-eslint
    dlasagno.rasi
    dotjoshjohnson.xml
    graphql.vscode-graphql
    graphql.vscode-graphql-syntax
    james-yu.latex-workshop
    jeff-hykin.better-cpp-syntax
    johnnymorganz.stylua
    kamadorueda.alejandra
    mathematic.vscode-latex
    piersdeseilligny.betterfountain
    vue.volar
    vue.vscode-typescript-vue-plugin
    wingrunr21.vscode-ruby
    rebornix.ruby
    redhat.vscode-yaml
    ms-python.isort
    ms-python.python
    ms-python.vscode-pylance
    ms-vscode.cpptools
    ms-vscode.cpptools-extension-pack
    ms-vscode.cpptools-themes
    ms-vscode.js-debug
    ms-vscode.js-debug-companion
    ms-vscode.makefile-tools
    robertoachar.vscode-essentials-snippets
    ms-vscode.vscode-js-profile-table

    # Git
    donjayamanne.githistory
    eamodio.gitlens
    codezombiech.gitignore

    # Util
    formulahendry.auto-rename-tag
    esbenp.prettier-vscode
    cschlosser.doxdocgen
    christian-kohler.path-intellisense
    editorconfig.editorconfig
    firefox-devtools.vscode-firefox-debug
    formulahendry.code-runner
    jheilingbrunner.vscode-gnupg-tool
    visualstudioexptteam.intellicode-api-usage-examples
    visualstudioexptteam.vscodeintellicode
    wayou.vscode-todo-highlight
    kisstkondoros.vscode-codemetrics

    # UI
    catppuccin.catppuccin-vsc
    catppuccin.catppuccin-vsc-icons
    catppuccin.catppuccin-vsc-pack
    miguelsolorio.fluent-icons
    ms-ceintl.vscode-language-pack-zh-hans

    # AI
    github.copilot
    github.copilot-chat

    # Remote
    ms-vscode-remote.remote-containers
    ms-vscode-remote.remote-ssh
    ms-vscode-remote.remote-ssh-edit
    ms-vscode-remote.remote-wsl
    ms-vscode-remote.remote-wsl-recommender
    ms-vscode-remote.vscode-remote-extensionpack
    ms-vscode.remote-explorer
    ms-vscode.remote-server
    ms-vsliveshare.vsliveshare
  ];
in {
  programs.vscode.extensions = with inputs.nix-vscode-extensions.extensions.${pkgs.system}.open-vsx;
    [
      felixfbecker.php-intellisense
      ms-vscode.references-view
    ]
    ++ marketplace-extensions;
}
