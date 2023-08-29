{
  # impermanence
  environment.persistence."/persist/system" = {
    hideMounts = true;

    directories = [
      "/etc"
      "/var/log"
      "/var/lib"
      "/root"
    ];

    files = [
    ];
  };
}
