{ config, pkgs, ... }:
{

	environment.systemPackages =  with pkgs; [
	       gnomeExtensions.sound-output-device-chooser
	       gnomeExtensions.appindicator
	       gnomeExtensions.caffeine
	];

	services.xserver.enable = true;
	services.xserver.displayManager.sddm.enable = true;
	#services.xserver.windowManager.waybox.enable = true;
	services.xserver.windowManager.icewm.enable = true;
	services.xserver.desktopManager.gnome.enable = true;
	environment.gnome.excludePackages = (with pkgs; [
		gnome-photos
		gnome-tour
	]) ++ (with pkgs.gnome; [
		gnome-maps
		gnome-weather
		gnome-contacts
		gnome-calculator
		gnome-clocks
		cheese 
		gnome-music
		gnome-terminal
		gedit
		epiphany
		geary
		#evince
		gnome-characters
		totem
		tali
		iagno
		hitori
		atomix
	]);
}
