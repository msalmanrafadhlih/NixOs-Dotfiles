# ./aliases.nix

{
tquilla = "colorscript -r";
NIXOS = "ls ~/.repos/nixos && cd ~/.repos/nixos";
RUNNING = "systemctl --user list-units --state=running";
SYSRUNNING = "systemctl list-units --state=running";
USAGELOG = "sudo journalctl --disk-usage";
SYSTEMD = "systemctl list-unit-files --type=service";
PYTHON8080 = "python3 -m http.server 8080";
SYSAPPS = "thunar /run/current-system/sw/share/applications";
TV = "nix run nixpkgs#television";

##  SYSTEM CONFIGURATIONS
HOSTS = "cd ~/.repos/nixos/host && tree ~/.repos/nixos/host";
NIX = "nvim ~/.repos/nixos/system/configuration.nix";
HNIX = "bat ~/.repos/nixos/system/hardware-configuration.nix";
FLAKE = "nvim ~/.repos/nixos/flake.nix";
LOCK = "bat ~/.repos/nixos/flake.lock";

FONTS = "nvim ~/.repos/nixos/module/fonts.nix";
SYSINSTALL = "nvim  ~/.repos/nixos/module/system-packages.nix";
SERVICE = "nvim  ~/.repos/nixos/module/services.nix";
BOOT = "~/.repos/nixos/module/boot.nix";


## GIT INTEG?RATION
GIT = "git add . && git commit -m";
CLASS = "xprop | grep CLASS";
NAME = "xprop | grep NAME";
GRAPH = "git log --oneline --decorate --graph --all";

##  USER CONFIGURATIONS {EDIT}
MDL = "cd ~/.repos/nixos/module && ls -a";
HOME = "cd ~/.repos/nixos/user && nvim ~/.repos/nixos/user/$USER.nix ";
ALIAS = "nvim ~/.repos/nixos/module/aliases.nix";
BASH = "nvim ~/.repos/nixos/module/bash.nix";
ZSH = " nvim ~/.repos/nixos/module/zshrc.nix";
INSTALL = "nvim ~/.repos/nixos/module/packages.nix";
BAT = "nvim ~/.repos/nixos/module/bat.nix";
XSESSION = "nvim ~/.repos/nixos/module/xsession.nix";
PAD = "nvim ~/.repos/nixos/module/toggle_touchpad.nix";
VOL = "nvim ~/.repos/nixos/module/volume.nix";
BRIGHT = "nvim ~/.repos/nixos/module/brightness.nix";
BAT0 = "nvim ~/.repos/nixos/module/battery.nix";
NANO = "nvim ~/.repos/nixos/module/nanorc.nix";
MPD = "nvim ~/.repos/nixos/module/mpd.nix";
BRANCH = "nvim ~/.repos/nixos/module/git-prompt.nix";
TAR = "nvim ~/.repos/nixos/module/tar.nix";
BG = "nvim ~/.repos/nixos/module/background.nix";
OPENCAM = "nvim ~/.repos/nixos/module/opencam.nix";
BOOKMARK = "nvim ~/.repos/nixos/module/bookmarks.nix";
REPOS = "nvim ~/.repos/nixos/module/github-repos.nix";
TMUXSESSION = "nvim ~/.repos/nixos/module/tmux-sessions.nix";
LOCAL = "nvim ~/.repos/nixos/module/locals.nix";
SSH = "nvim ~/.repos/nixos/module/ssh.nix";

##  USER CONFIGURATIONS {SAVE}
UTILS = "chmod +x ~/.local/bin/*.sh";

## LINK BOOKMARKS
PERSONAL = "nvim ~/.config/bookmarks/personal.txt";
WORK = "nvim ~/.config/bookmarks/work.txt";


##  DOTSFILE CONNFIGURATION & BSPWM
CONFIG = "ls ~/.repos/Dotfiles/BSPWM/config && cd ~/.repos/Dotfiles/BSPWM/config";
POLYMODULE = "tree ~/.repos/Dotfiles/BSPWM/config/polybar/modules && cd ~/.repos/Dotfiles/BSPWM/config/polybar/modules";
POLYSCRIPT =  "cd ~/.repos/Dotfiles/BSPWM/config/polybar/script && tree";

TMUX = "nvim ~/.repos/Dotfiles/BSPWM/config/tmux/tmux.conf";
ER = "nvim ~/.repos/Dotfiles/BSPWM/config/bspwm/src/ExternalRules";
BSPWM = "nvim ~/.repos/Dotfiles/BSPWM/config/bspwm/bspwmrc";
SXHKD = "nvim ~/.repos/Dotfiles/BSPWM/config/sxhkd/sxhkdrc";
POLY = "nvim ~/.repos/Dotfiles/BSPWM/config/polybar/config.ini";
ALAC = "nvim ~/.repos/Dotfiles/BSPWM/config/alacritty/alacritty.toml";
DUNST = "nvim ~/.repos/Dotfiles/BSPWM/config/dunst/dunstrc";
CURSOR = "nvim ~/.icons/default/index.theme";
PCOM = "nvim ~/.repos/Dotfiles/BSPWM/config/picom/picom.conf";
ANIMA = "nvim ~/.repos/Dotfiles/BSPWM/config/picom/picom-animations.conf";
POWERMENU = "nvim ~/.repos/Dotfiles/BSPWM/config/rofi/files/powermenu/type-4/style-1.rasi";
ROFI = "nvim ~/.repos/Dotfiles/BSPWM/config/rofi/files/launchers/type-7/style-4.rasi";

## Suckless Stuff
SUCKPULL = "mv config.h config.h.bak && git pull";
NSHELL = "cd shell && nix-shell && cd ..";
PATCH = "patch -p1 <";
STCONF = "cd ~/.config/st && nvim config.h";
DMENUCONF = "cd ~/.config/dmenu && nvim config.h";
DWMCONF = "cd ~/.config/dwm && nvim config.h";
CONFSAVE = "mv config.h config.h.bak";
CONFDEL = "cp config.h.bak config.h";
MAKE = "make clean && make && make install PREFIX=$HOME/.local";
SUCKLESS = "nvim ~/.repos/nixos/module/suckless.nix";

## Tmux
TMUXSAVE = "tmux source-file ~/.config/tmux/tmux.conf";
TMUXDEL = "tmux kill-server";
MOSH = "mosh --ssh='ssh -p 8022'";

# Python
py = "python3";

##  OTHER
BASHSAVE = "source ~/.bashrc && dunstify 'BASHRC saved'";
ZSHSAVE = "source ~/.zshrc && dunstify 'ZSHRC saved'";
UPDT = "nix flake update";
SAVEFLAKE = "sudo nixos-rebuild switch --flake ~/.repos/nixos#nixos";

OLD = "sudo nix-env -p /nix/var/nix/profiles/system --list-generations";
GBGOLD = "sudo nix-env -p /nix/var/nix/profiles/system --delete-generations +3";
GBG = "sudo nix-collect-garbage";
OPTIMISE = "sudo nix-store --optimise";
GC = "sudo nix-store --gc";
CLEANER = "rm -rf ~/.cache/nix && rm -rf /tmp/nix-build-* && rm -rf ~/.local/share/Trash";
CLEAR = "clear";
clar = "clear";
CLS = "clear";
cls = "clear";
C = "clear";
c = "clear";

PKG = "nix search nixpkgs";
SRC = "fc-list | grep -i";
FONTLIST = "fc-match -s";
SVFONT = "fc-cache -fv";
GETHASH = "nix store prefetch-file"; ## GETHASH <link>
PKGLIST = "nix-store --query --requisites /run/current-system | cut -d- -f2- | sort | uniq";
connect = "sudo tailscale up --operator=$USER";

## productivities
CAM = "~/.local/bin/opencam";
DMUSIC = "yt-dlp --trim-filenames 80 --restrict-filenames -x --audio-format mp3 -S 'abr,codec' -o '~/Musics/%(playlist|NA)s/%(title)s [%(id)s].%(ext)s'";
DVIDEO = "yt-dlp --trim-filenames 80 --restrict-filenames -S 'res:720,codec,br,fps' -f 'bv*+ba/best' -o '~/Videos/%(playlist|NA)s/%(title)s [%(id)s].%(ext)s'";
IMGCOMPRESS="~/.local/bin/compress-images.sh";
DTAR = "~/.local/bin/tar.sh"; ## overwite folder to folder.tar.gz
XYZ = "~/.local/bin/xyz.sh";
MPG = "ffmpeg -i"; ## MPG <path/to/img.png> <overwrite/img/file>
yz = "yazi";
YZ = "yazi";

## POWER
REBOOT = "sudo reboot";
OFF = "poweroff";

}
