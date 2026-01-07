{pkgs, ...}: {
  programs.firefox = {
    enable = true;
  };

  home.sessionVariables = {
    DEFAULT_BROWSER = "${pkgs.firefox}/bin/firefox";
  };
}
