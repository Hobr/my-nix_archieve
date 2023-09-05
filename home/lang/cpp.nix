{pkgs, ...}: {
  # gcc
  home.packages = with pkgs; [
    gcc
    gdb
  ];
  # clang
  # llvm
}
