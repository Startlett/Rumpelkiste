{ config, pkgs, ... }:
{
 # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    
  };
  
  #MPD
  services.mpd = {
  enable = true;
  musicDirectory = "/home/nico/Musik";
  extraConfig = ''
    audio_output {
    type "pipewire"
    name "My PipeWire Output"
  }
  audio_output {
   type "fifo"
   name "my_fifo"
   path "/tmp/mpd.fifo"
   format "44100:16:2"
   }
   '';
 };
  services.mpd.user = "nico";
  systemd.services.mpd.environment = {
     XDG_RUNTIME_DIR = "/run/user/1000";
 };
 systemd.services.mpd.serviceConfig.SupplementaryGroups = [ "pipewire" ];

}
