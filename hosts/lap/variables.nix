{
  config,
  lib,
  ...
}: {
  imports = [
    # Choose your theme here:
    ../../themes/rose-pine.nix
  ];

  config.var = {
    hostname = "lap";
    username = "dirt";
    configDirectory =
      "/home/"
      + config.var.username
      + "/.config/nixos"; # The path of the nixos configuration directory

    keyboardLayout = "us";

    location = "Chicago";
    timeZone = "America/Chicago";
    defaultLocale = "en_US.UTF-8";

    git = {
      username = "dirtstump";
      email = "dirtstump@gmail.com";
    };

    autoUpgrade = false;
    autoGarbageCollector = true;
  };

  # DON'T TOUCH THIS
  options = {
    var = lib.mkOption {
      type = lib.types.attrs;
      default = {};
    };
  };
}
