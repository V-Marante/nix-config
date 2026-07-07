{ pkgs, ... }:

{
  home.packages = with pkgs; [

    # csharp
    dotnet-sdk

    # source control
    git
    gh

    # utilities
    ripgrep
    fd
    jq

  ];
}
