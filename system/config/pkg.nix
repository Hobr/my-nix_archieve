{outputs, ...}: {
  nixpkgs = {
    hostPlatform = "x86_64-linux";
    overlays = [
      # overlays\pkgs目录
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages

      # flakes
      # neovim-nightly-overlay.overlays.default

      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    config = {
      allowUnfree = true;
    };
  };

  boot.tmp.useTmpfs = true;

  # 文档
  documentation = {
    enable = true;
    doc.enable = false;
    man.enable = true;
    dev.enable = false;
  };

  nix.settings = {
    # 最大并行构建数
    max-jobs = "auto";
  };
}
