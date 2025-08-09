{ config, pkgs, ... }:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.nico = {
    isNormalUser = true;
    description = "Nico oettel";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" "vboxfs" ];
    packages = with pkgs; [

    ];
  };

   # Enable automatic login for the user.
#  services.displayManager.autoLogin.enable = true;
#  services.displayManager.autoLogin.user = "nico";


}
