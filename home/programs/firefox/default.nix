{pkgs, ...}: {
  programs.firefox = {
    enable = true;
    profiles = {
      dirt = {
        name = "dirt";
      };
    };
  };

  stylix.targets.firefox = {
    profileNames = ["dirt"];
  };

  # home.sessionVariables = {
  #   DEFAULT_BROWSER = "${pkgs.firefox}/bin/firefox";
  # };
}
