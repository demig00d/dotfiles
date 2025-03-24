{
  description = "demig00d's system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    # nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew/main";
  };

  outputs = inputs@{ self, nixpkgs, nix-darwin, nix-homebrew, ... }:
  let
    commonConfig   = import ./common/default.nix;
    packagesConfig = import ./common/packages.nix;
    fontsConfig    = import ./common/fonts.nix;
    darwinConfig   = import ./darwin/configuration.nix;
    homebrewConfig = import ./darwin/homebrew.nix;
    # linuxConfig    = import ./linux/configuration.nix;
  in
  {
    darwinConfigurations."MBPro" = nix-darwin.lib.darwinSystem {
      modules = [ commonConfig packagesConfig fontsConfig darwinConfig homebrewConfig ];
    };

    # # Placeholder for Linux systems
    # linuxConfigurations."MBPro" = linuxConfig;

    darwinPackages = self.darwinConfigurations."MBPro".pkgs;
  };
}
