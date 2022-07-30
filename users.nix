{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
   users.users.matt = {
	initialPassword = "123";
     isNormalUser = true;
     extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
     packages = with pkgs; [
       #firefox
       #thunderbird

       #whatsapp-for-linux
#       spotify
#       discord
#       signal-desktop
#       element-desktop
#       nextcloud-client
#       steam

     ];
   };
}
