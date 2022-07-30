{ config, pkgs, ... }:

{
	fonts = {
		enableDefaultFonts = true;
	  fonts = with pkgs; [
		noto-fonts
		cantarell-fonts
	  ];

	  fontconfig = {
		defaultFonts = {
			serif = [ "DejaVu" ];
			sansSerif = [ "Cantarell" ];
			monospace = [ "Noto Sans Mono Bold 14" ];
		};
	  };


	};
}
