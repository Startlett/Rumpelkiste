{ config, pkgs, ... }:

{

environment.systemPackages = with pkgs; [
     
     #Fotografie
     pkgs.darktable
     pkgs.gimp3-with-plugins
     pkgs.digikam
     pkgs.hugin
     pkgs.wacomtablet
     pkgs.colord
     pkgs.displaycal
     
     #Spiele
     pkgs.mudlet
     pkgs.luanti
     pkgs.openclonk
     #wine
     pkgs.winetricks
     wineWowPackages.waylandFull
     
     #Büro
     pkgs.libreoffice-fresh
     pkgs.hunspell
     pkgs.hunspellDicts.de_DE
     
     #Web
     pkgs.telegram-desktop
     pkgs.freetube
     
     #E-Books
     pkgs.calibre
     pkgs.calibre-web
     
     #Passwörter
     pkgs.keepassxc
     
     #System
     pkgs.postscript-lexmark
     pkgs.foomatic-db-nonfree
     pkgs.home-manager
     pkgs.btop
     pkgs.mc
     pkgs.mesa
     pkgs.libdrm
     pkgs.unrar
     pkgs.git
     
     #Virtualisierung
     pkgs.virtiofsd
     pkgs.virt-manager
     pkgs.virt-viewer
     pkgs.spice 
     pkgs.spice-gtk
     pkgs.spice-protocol
     pkgs.win-virtio
     pkgs.win-spice
     
     #Musik
     pkgs.picard
     pkgs.easytag
     pkgs.beets
     pkgs.chromaprint
     #mpd
     pkgs.plattenalbum
     pkgs.ymuse
     pkgs.mpd-notification
     pkgs.ncmpc
     pkgs.mpd-notification
     pkgs.mpc
     pkgs.sonata
     pkgs.mpd-mpris
     pkgs.mpd-sima
     pkgs.euphonica
     
     #Mutimedia
     pkgs.vlc
     pkgs.filebot
     pkgs.gst_all_1.gst-plugins-ugly
     pkgs.gst_all_1.gst-plugins-bad
     pkgs.gst_all_1.gst-plugins-good
     
     #Gnome
     pkgs.gedit
     pkgs.dconf-editor
     pkgs.deja-dup
     
     #Gnome Erweiterungen
     pkgs.gnomeExtensions.blur-my-shell
     pkgs.gnomeExtensions.just-perfection
     pkgs.gnomeExtensions.arc-menu
     pkgs.gedit
     pkgs.gnome-tweaks
     pkgs.gnomeExtensions.appindicator
     pkgs.gnomeExtensions.topicons-plus
     pkgs.gnomeExtensions.system-monitor
     pkgs.rapid-photo-downloader
     pkgs.gnomeExtensions.syncthing-toggle
     pkgs.gnomeExtensions.syncthing-indicator
     pkgs.gnomeExtensions.bowser-gnome-extension
    
     
  ]; 

# Install firefox.
  programs.firefox.enable = true;
  programs.firefox.languagePacks = [
   "de"
   ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.nvidia.acceptLicense = true;
  
  #enable fish
  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;


  #neovim
  programs.neovim = {
    enable = true;
    defaultEditor = true;
};

#special:
   nixpkgs.config.permittedInsecurePackages = [
                "libsoup-2.74.3"
              ];
}
