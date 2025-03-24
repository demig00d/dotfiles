{ pkgs, ... }:
{
  homebrew = {
    enable = true;
    brews = [ 
      "cormacrelf/tap/dark-notify"
      "filosottile/musl-cross/musl-cross"
      "mas"
      "mingw-w64"
      "n"
    ];
    casks = [ 
      "balenaetcher"
      "dbeaver-community"
      "floorp"
      "hammerspoon" 
      "jordanbaird-ice"
      "legcord"
      "lulu"
    ];
    masApps = {
      "Microsoft Excel" = 462058435;
      "Microsoft Word" = 462054704;
      "Yomu EBook Reader" = 562211012;
    };
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
  };
}
