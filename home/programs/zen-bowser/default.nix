{
  inputs,
  pkgs,
  ...
}: {
  imports = [inputs.zen-browser.homeModules.beta];
  programs.zen-browser = {
    enable = true;
  };

  #  home.sessionVariables = {
  #    DEFAULT_BROWSER = "${pkgs.brave}/bin/brave";
  #  };
}
