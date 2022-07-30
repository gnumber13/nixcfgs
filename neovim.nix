{ config, pkgs, ... }:
{
	environment.systemPackages = with pkgs; [
		neovim
		python310
		python310Packages.pynvim
		yarn 
		nodePackages.bash-language-server
		nodePackages.neovim

	];

	environment.variables.EDITOR = "nvim";
	programs.neovim.enable = true;
	programs.neovim.viAlias = true;
	programs.neovim.vimAlias = true;
}
