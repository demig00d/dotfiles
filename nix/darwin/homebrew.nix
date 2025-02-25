{ pkgs, ... }:
{
  homebrew = {
    enable = true;
    brews = [ 
      "filosottile/musl-cross/musl-cross"
      "mas"
      "mingw-w64"
      "n"
    ];
    casks = [ 
      "hammerspoon" 
      "jordanbaird-ice"
      "legcord"
      "lulu"
      "whisky"
      "zed"
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
