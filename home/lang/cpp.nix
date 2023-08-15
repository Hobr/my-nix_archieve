{pkgs, ...}: {
  # gcc
  home.packages = with pkgs; [
    gcc
  ];
  # clang
  # llvm
  # gdb
}
