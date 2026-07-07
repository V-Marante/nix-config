{ pkgs-unstable, ... }:

{
  programs.git = {
    enable = true;
    package = pkgs-unstable.git;

    settings = {
      user = {
        name = "VictorMarante";
        email = "victormarante7@gmail.com";
      };
      init.defaultBranch = "main";
      core.editor = "hx";
    };
  };

  home.packages = with pkgs-unstable; [
    gh
  ];
}
