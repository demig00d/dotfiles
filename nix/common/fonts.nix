{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    (iosevka-bin.override { variant = "SS14"; })
    (iosevka-bin.override { variant = "SGr-IosevkaFixedSS14"; })
    nerd-fonts.iosevka
  ];
}
