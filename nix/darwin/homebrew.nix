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
      "zed"
    ];
    masApps = {
      "Microsoft Word" = 462054704;
      "Microsoft Excel" = 462058435;
    };
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
  };
}
