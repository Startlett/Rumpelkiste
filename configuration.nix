
{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./syncthing.nix
      ./mount.nix
      ./apps.nix
      ./desktop.nix
      ./locale.nix
      ./system.nix
      ./multimedia.nix
      ./virtualisierung.nix
      ./home.nix
      ./netzwerk.nix
    ];
}

