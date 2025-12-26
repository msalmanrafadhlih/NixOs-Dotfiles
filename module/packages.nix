{ pkgs, ... }:

{
home.packages =
  (with pkgs; [
    # stable packages
    fastfetch
    rofi
    gimp
    vivaldi
    tmux

    nixpkgs-fmt
    vscode
    nodejs_24
    feh
    gcc

    font-manager
    picard
    jellyfin-ffmpeg
    ungoogled-chromium
    libreoffice
    zoom
    evince
    obs-studio
    flameshot
    glow # preview readme.md

    inputs.angeldust-nixCats.packages.${pkgs.system}.default
  ])
  ++ (with pkgs.unstable; [
    # unstable packages
    ani-cli
    yt-dlp
    timg
    vesktop
    kdocker
    yazi
    rmpc
    kitty
    geany
  ]);

}

