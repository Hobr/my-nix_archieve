{
  inputs,
  outputs,
  ...
}: {
  imports =
    [
      # modules/home-manager
      # outputs.homeManagerModules.example
    ]
    ++ [
      # flakes
      inputs.hyprland.homeManagerModules.default
      inputs.impermanence.nixosModules.home-manager.impermanence
    ]
    ++ [
      ./desktop/launcher.nix
      ./desktop/home.nix
      ./desktop/hypr.nix
      ./desktop/lock.nix
      ./desktop/notification.nix
      ./desktop/style.nix
    ]
    ++ [
      ./dev/cutter.nix
      ./dev/docker.nix
      ./dev/neovim.nix
      ./dev/qemu.nix
      ./dev/vscode.nix
    ]
    ++ [
      ./lang/cpp.nix
      ./lang/elect.nix
      ./lang/lua.nix
      ./lang/nix.nix
      ./lang/nodejs.nix
      ./lang/php.nix
      ./lang/python.nix
      ./lang/riscv.nix
      ./lang/ruby.nix
      ./lang/rust.nix
    ]
    ++ [
      ./media/image.nix
      ./media/music.nix
      ./media/video.nix
    ]
    ++ [
      ./message/chat.nix
      ./message/email.nix
      ./message/irc.nix
      ./message/matrix.nix
      ./message/tencent.nix
    ]
    ++ [
      ./office/doc.nix
      ./office/note.nix
      ./office/office.nix
      ./office/tex.nix
    ]
    ++ [
      ./tool/colorpicker.nix
      ./tool/fcitx.nix
      ./tool/record.nix
      ./tool/shell.nix
      ./tool/terminal.nix
    ]
    ++ [
      ./utils/archieve.nix
      ./utils/file.nix
      ./utils/git.nix
      ./utils/gnu.nix
      ./utils/keyring.nix
      #./utils/persist.nix
      ./utils/status.nix
    ]
    ++ [
      ./web/browser.nix
      ./web/download.nix
      ./web/proxy.nix
    ];

  nixpkgs = {
    overlays = [
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages

      # flakes
      inputs.rust-overlay.overlays.default

      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };
}
