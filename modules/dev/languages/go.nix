
{ pkgs-unstable, ... }:

{

  home.packages = with pkgs-unstable; [
    pkgs-unstable.go
  ];
  
}
