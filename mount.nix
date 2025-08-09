{
 #NFS mount
 fileSystems."/media/Diskstation/Musik" = {
    device = "192.168.178.24:/volume1/music";
    fsType = "nfs";
   # options = ["user"];
  };
 
fileSystems."/media/Diskstation/Videos" = {
    device = "192.168.178.24:/volume1/video";
    fsType = "nfs";
  };
 fileSystems."/media/Diskstation/Bilder" = {
    device = "192.168.178.24:/volume1/photo";
    fsType = "nfs";
  };

fileSystems."/media/Diskstation/Backup" = {
    device = "192.168.178.24:/volume1/Backup";
    fsType = "nfs";
  };
fileSystems."/media/Wohnzimmer/Downloads" = {
    device = "192.168.178.20:/export/Downloads";
    fsType = "nfs";
  };

}
