{ config, pkgs, ... }:
{
  system.stateVersion = "25.05";
  
  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  hardware.cpu.intel.updateMicrocode = true;
  hardware.usb-modeswitch.enable = true;  
  boot.extraModprobeConfig = "options kvm_intel nested=1";
  boot.kernelPackages = pkgs.linuxPackages_zen;
  hardware.graphics.extraPackages = with pkgs; [ ocl-icd ];

 #Enable CUPS to print documents.
  services.printing.enable = true;

  #colord
  services.colord.enable = true;
  
  #coolercontrol
  programs.coolercontrol.enable = true;
 
 #htop
  programs.htop.enable = true;
 #nixos 
  nix.optimise.automatic = true;
 #Automatic Garbage Collection
    nix.gc = {
                automatic = true;
                dates = "daily";
                options = "--delete-older-than 7d";
};

  # Enable OpenGL
  hardware.graphics = {
    enable = true;
  };
  
}
