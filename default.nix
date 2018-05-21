{ pkgs ? import <nixpkgs> { config = { allowUnfree = true; }; } 
}:
  pkgs.haskellPackages.callPackage ./scotty-starter.nix {}
