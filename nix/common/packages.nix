{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    # Shells & Terminals
    fish            # User-friendly shell
    tmux            # Terminal multiplexer
    # ghostty         # Terminal emulator
    # kitty           # Terminal emulator

    # Editors & Fuzzy Finder
    fzf             # Fuzzy finder
    helix           # Text editor
    neovim          # Text editor

    # System Utilities
    bat             # A cat(1) clone with wings.
    coreutils       # Basic file, shell and text manipulation utilities
    fd              # Alternative to 'find'
    htop            # Interactive process viewer
    ncdu            # Disk usage analyzer
    ripgrep         # Recursively searches directories for a regex pattern
    stow            # Symlink farm manager
    tree            # Display directory tree
    zoxide          # Smarter cd command
    yt-dlp          # YouTube downloader
    gdb             # Debugger

    # Networking Tools
    aria2           # Download utility
    curl            # Tool for transferring data from or to a server
    ngrep           # Network packet analyzer
    nmap            # Network exploration and security scanner
    qbittorrent-nox # qBittorrent with WebUI only
    torsocks        # Wrapper for using programs with Tor
    wget            # Network downloader
    wget2           # Successor of wget
    vegeta          # HTTP load testing tool

    # File Utilities
    diffutils       # File comparison utilities
    dos2unix        # Convert text files from DOS to Unix format
    pv              # Monitor the progress of data through a pipeline
    colordiff       # Colorized diff output
    diff-so-fancy   # Human-readable diffs
    delta           # Syntax-highlighting pager for diff output
    jq              # Command-line JSON processor
    superfile       # Faster alternative to file(1)

    # Archiving & Compression
    bzip2           # High-quality data compressor
    wimlib          # Tool for working with WIM images
    lzfse           # LZFSE compression tool

    # Development Tools
    apktool         # Reverse engineering Android APK files
    bison           # Parser generator
    cmake           # Cross-platform build system
    flex            # Fast lexical analyzer generator
    git             # Distributed version control system
    gitleaks        # Detect secrets in git repos
    nixd            # Nix language server
    rebar3          # Official Erlang build tool
    shellcheck      # Static analysis for shell scripts
    swig            # Connects C/C++ with other languages
    tree-sitter     # Parser generator and incremental parser library
    yarn            # Package manager for JavaScript/TypeScript

    # Document Processing
    pandoc          # Universal markup converter
    plantuml        # Diagram generator from plain text
    typst           # Markup-based typesetting system
    qpdf            # PDF transformation/inspection
    imagemagick     # Image manipulation program
    graphicsmagick  # Image processing system
    exiftool        # Edit file metadata
    gifsicle        # Manipulate and optimize GIF images

    # Programming Languages
    gleam           # Statically typed language for the Erlang VM
    go              # Compiled programming language

    # Other Tools
    cabextract      # Extract files from Microsoft cabinet files
    cdrtools        # Create and write CD/DVD/Blu-ray media
    gptfdisk        # GPT partitioning tool
    oh-my-posh      # Prompt theme engine for any shell
    pwgen           # Password generator
    scrcpy          # Display and control your Android device
    vips            # Image processing library

    # Other Applications
    dav1d          # AV1 decoder
    ffmpeg         # Audio/video conversion and streaming solution
    discord         # Chat, voice, and video client
    obsidian        # Note-taking and knowledge management software
  ];
}
