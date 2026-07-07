{ pkgs, pkgs-unstable, ... }:

{

  home.packages = with pkgs; [
    python3
  ] ++ (with pkgs-unstable; [
    opencode
    lazygit
    gh-dash
    steel # steel suite for helix plugins

  ]);
  
}
