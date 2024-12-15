{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    neovim          # Text editor
    kitty           # Terminal emulator
    tmux            # Terminal multiplexer
    fish            # User-friendly shell
    fzf             # Fuzzy finder
    
    # System Utilities
    coreutils       # Basic file, shell and text manipulation utilities
    htop            # Interactive process viewer
    ncdu            # Disk usage analyzer
    fd              # A simple, fast and user-friendly alternative to 'find'
    ripgrep         # Recursively searches directories for a regex pattern
    tree            # Display directory tree
    stow            # Symlink farm manager

    # Networking
    aria2           # Download utility
    curl            # Tool for transferring data from or to a server
    ngrep           # Network packet analyzer
    nmap            # Network exploration tool and security / port scanner
    qbittorrent-nox # Version of qBittorrent that only has a WebUI instead of a windowed desktop GUI
    torsocks        # Wrapper for using programs with Tor
    wget            # Network downloader
    wget2           # Successor of wget

    # File Utilities
    diffutils       # File comparison utilities
    dos2unix        # Convert text files from DOS to Unix format
    pv              # Monitor the progress of data through a pipeline
    colordiff       # Colorized 'diff' output
    diff-so-fancy   # Make diffs human readable instead of machine readable
    delta           # A syntax-highlighting pager for git, diff, and grep output
    jq              # Lightweight and flexible command-line JSON processor
    superfile       # Faster alternative to file(1)

    # Archiving and Compression
    bzip2           # High-quality data compressor
    wimlib          # Library and CLI for creating, modifying, extracting, and mounting WIM images
    lzfse           # LZFSE compression library and command-line tool

    # Development Tools
    git             # Distributed version control system
    gitleaks        # Tool for detecting secrets like passwords, API keys, and tokens in git repos
    cmake           # Cross-platform, open-source build system
    swig            # Connects C/C++ code with other programming languages
    bison           # General-purpose parser generator
    flex            # Fast lexical analyzer generator
    shellcheck      # Static analysis tool for shell scripts
    nixd            # Nix language server, based on nix libraries
    tree-sitter     # Parser generator tool and incremental parsing library
    apktool         # A tool for reverse engineering Android apk files

    # Document Processing
    pandoc          # Universal markup converter
    plantuml        # Create diagrams from plain text
    typst           # A new markup-based typesetting system
    qpdf            # PDF transformation/inspection software
    imagemagick     # Image manipulation program
    graphicsmagick  # Image processing system
    mupdf           # Lightweight PDF and XPS viewer
    exiftool        # Read, write and edit file metadata
    gifsicle        # Create, manipulate, and optimize GIF images and animations

    # Other Tools
    pwgen           # Password generator
    scrcpy          # Display and control your Android device
    cabextract      # Extract files from Microsoft cabinet files
    cdrtools        # Create and write CD/DVD/Blu-ray media
    jadx            # Dex to Java decompiler
    vips            # Image processing library
    gptfdisk        # GPT partitioning tool

    # Other Applications
    dav1d           # AV1 decoder
    ffmpeg          # A complete, cross-platform solution to record, convert and stream audio and video
    discord         # Chat, voice, and video client
    obsidian        # Note-taking and knowledge management software
  ];
}
