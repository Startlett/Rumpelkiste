{ config, pkgs, ... }:
{
 networking.hostName = "Rumpelkiste";
 networking.networkmanager.enable = true;
 
  programs.mtr.enable = true;
  programs.gnupg.agent = {
     enable = true;
     enableSSHSupport = true;
   };
   
   # Enable the OpenSSH daemon.
   services.openssh.enable = true;

   #Firewall
   # networking.firewall.allowedTCPPorts = [ ... ];
   # networking.firewall.allowedUDPPorts = [ ... ];
   # Or disable the firewall altogether.
     networking.firewall.enable = false;
     
}
