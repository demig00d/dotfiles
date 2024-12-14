{ pkgs, config, ... }:
{
  system.activationScripts.applications.text = let
    env = pkgs.buildEnv {
      name = "system-applications";
      paths = config.environment.systemPackages;
      pathsToLink = "/Applications";
    };
  in
    pkgs.lib.mkForce ''
    echo "setting up /Applications..." >&2
    rm -rf /Applications/Nix\ Apps
    mkdir -p /Applications/Nix\ Apps
    find ${env}/Applications -maxdepth 1 -type l -exec readlink '{}' + |
    while read -r src; do
      app_name=$(basename "$src")
      echo "copying $src" >&2
      ${pkgs.mkalias}/bin/mkalias "$src" "/Applications/Nix Apps/$app_name"
    done
    '';

  system.defaults = {
    NSGlobalDomain.AppleICUForce24HourTime = true;
    NSGlobalDomain.KeyRepeat = 2;
    dock.persistent-apps = [
      "/System/Applications/System Settings.app"
      "/Applications/Arc.app"
      "${pkgs.obsidian}/Applications/Obsidian.app"
      "${pkgs.kitty}/Applications/kitty.app"
      "/Applications/Zed.app"
    ];
    loginwindow.GuestEnabled = false;
    dock.show-recents = false;
  };

  nixpkgs.hostPlatform = "aarch64-darwin";
}
