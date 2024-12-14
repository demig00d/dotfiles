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
      "zed" 
      "lulu" 
    ];
    masApps = {
      "Microsoft Word" = 462054704;
      "Microsoft Excel" = 462058435;
    };
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
  };
}
