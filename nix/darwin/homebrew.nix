{ pkgs, ... }:
{
  homebrew = {
    enable = true;
    brews = [ 
      "mas"
      "n"
    ];
    casks = [ 
      "hammerspoon" 
      "jordanbaird-ice"
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
