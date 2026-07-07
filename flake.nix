{
  description = "Victor personal WSL environment";

inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
};
  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, ... }:

  let
system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      pkgs-unstable = import nixpkgs-unstable {
        inherit system;
        config.allowUnfree = true;
      };

  in {

    homeConfigurations."victor-personal" =
      home-manager.lib.homeManagerConfiguration {

        inherit pkgs;

	extraSpecialArgs = { inherit pkgs-unstable; };

        modules = [
          ./home.nix
        ];

      };

  };
}
