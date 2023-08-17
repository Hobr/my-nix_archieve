{pkgs, ...}: {
  # neofetch: 系统信息
  # lolcat: 彩色输出
  home.packages = with pkgs; [
    neofetch
    lolcat
  ];

  # btop: 系统监控
  programs = {
    btop = {
      enable = true;
    };
  };

  # nvtop: GPU监控
  # iotop: io监控
  # iftop: 网络监控

  # nix-output-monitor: Nix输出监控

  # lm_sensors: 温度监控

  # strace: 系统调用监控
  # ltrace: 库调用监控
  # lsof: 文件监控

  # sysstat: 系统信息
  # ethtool: 网络信息
  # pciutils: PCI信息
  # usbutils: USB信息
}
