{
imports = [
    ./modules/core/default.nix
    ./modules/shell/default.nix
    ./modules/editor/default.nix
    ./modules/tools/default.nix
    ./modules/dev/default.nix
    ./modules/agents/default.nix
  ];

  home.username = "victor-personal";
  home.homeDirectory = "/home/victor-personal";


  home.stateVersion = "24.11";


  programs.home-manager.enable = true;
}
