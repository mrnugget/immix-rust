{
  description = "A Flake for immix-rust";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.11";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };
  outputs = { self, nixpkgs, flake-parts }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];
      flake = {
      };
      perSystem = { config, self', inputs', pkgs, system, ... }: {
        packages = rec {
          default = immix-rust;
          immix-rust = pkgs.callPackage ./default.nix { };
        };
      };
    };
}

