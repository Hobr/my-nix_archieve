{config, ...}: {
  time.timeZone = "Asia/Shanghai";
  # time.hardwareClockInLocalTime = true;
  i18n.defaultLocale = "zh_CN.UTF-8";
  i18n.supportedLocales = ["zh_CN.UTF-8/UTF-8" "en_US.UTF-8/UTF-8"];

  environment.variables = {
    TZ = "${config.time.timeZone}";
  };
}
