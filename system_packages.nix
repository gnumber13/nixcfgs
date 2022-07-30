{ config, pkgs, ... }:
{
   environment.systemPackages = with pkgs; [
   	## cli
	ncdu
	python310
	borgbackup
	htop 
	git
	rsync
	age
	thefuck
	#qemu

	# -- graphical
	# waybox
	sddm
	tilix
	icewm

   #vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
   ];

}
