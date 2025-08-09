{
services = {
  syncthing = {
    enable = true;
    user = "nico";
    dataDir = "/home/nico";
    configDir = "/home/nico/.config/syncthing";
    overrideDevices = true;     # overrides any devices added or deleted through the WebUI
    overrideFolders = true;     # overrides any folders added or deleted through the WebUI
    settings = {
      devices = {
        "Schleppkiste" = { id = "NWYLNGI-YSXNDNF-UWGLBPH-MK6EEX3-NH4NUVN-YZNL4PM-3HCLNIN-CDTT7QF"; };
        "Wohnzimmer" = { id = "LLA6Z2F-EEGBUVY-NQRDDLJ-2PUCSMZ-34RUY6A-WERFXTC-VGLTZI3-77EXEAE"; };
	"Schleppi" = { id = "LLLGNNK-5EJ5GEZ-BZQQXIY-F7LSUYK-N7CRPFT-DCA7HXX-TJNGC2B-2XSMJA3"; };
      };
      folders = {
        "Calibre-Bibliothek" = {         # Name of folder in Syncthing, also the folder ID
          path = "/home/nico/Calibre-Bibliothek";    # Which folder to add to Syncthing
          devices = [ "Wohnzimmer" "Schleppkiste" "Schleppi" ];      # Which devices to share the folder with
          ignorePerms = true;
        };
        "Fotoalbum" = {
          path = "/home/nico/Bilder/Fotoalbum";
          devices = [ "Wohnzimmer" "Schleppkiste" ];
          ignorePerms = true;  # By default, Syncthing doesn't sync file permissions. This line enables it for this folder.
        };
        "Bilder" = {
          path = "/home/nico/Bilder";
          devices = [ "Wohnzimmer" "Schleppi" ];
          ignorePerms = true;  # By default, Syncthing doesn't sync file permissions. This line enables it for this folder.
         };
          "Musik" = {
          path = "/home/nico/Musik";
          devices = [ "Wohnzimmer" "Schleppi" ];
          ignorePerms = true;  # By default, Syncthing doesn't sync file permissions. This line enables it for this folder.
         };
          "Dokumente" = {
          path = "/home/nico/Dokumente";
          devices = [ "Wohnzimmer" "Schleppkiste" "Schleppi" ];
          ignorePerms = true;  # By default, Syncthing doesn't sync file permissions. This line enables it for this folder.
         };
      };
    };
  };
};

services.syncthing.settings.gui = {
    user = "nico";
    password = "xe3Teayu";
    apikey = "qGpppGYz2HVtkLcWpmQpNCKqy3SvtVR3";
};

services.syncthing.guiAddress = "0.0.0.0:8384";

}

