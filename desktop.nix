{ config, pkgs, ... }:
{
# Enable the X11 windowing system.
  services.xserver.enable = true;
  

  # Enable the GNOME Desktop Environment.
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;
  services.gnome.gnome-browser-connector.enable = true;

  #Gnome Anwendungen
  programs.gpaste.enable = true;
  programs.gnome-terminal.enable = true;
  services.gnome.gnome-settings-daemon.enable = true;
  services.gnome.core-shell.enable = true;
  programs.geary.enable = true;
  programs.evince.enable = true;
  programs.file-roller.enable = true;
  services.gnome.sushi.enable = true;
  services.gnome.localsearch.enable = true;
  programs.kdeconnect = {
  enable = true;
  package = pkgs.gnomeExtensions.gsconnect;
  };
  
  services.udev.packages = with pkgs; [
      pkgs.gnome-settings-daemon
   ];
}
