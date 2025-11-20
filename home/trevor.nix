{ config, pkgs, ...}: {

  home.username = "trevor";
  home.homeDirectory = "/home/trevor";

  programs.ghostty.enable = true;

  programs.fish = {
  	enable = true;
		interactiveShellInit = ''
			set fish_greeting # Disable greeting
		'';
  	shellAliases = {
  		# Backup binds
  		bls = "ls";
  		brm = "rm";

  		# New binds
  		d = "z";
  		dl = "lsd";
  		ls = "lsd";
  		rm = "rmtrash";
  		g = "git";
  		gl = "lazygit";
  		cl = "clear";
  	};
  };

	programs.zoxide = {
	  enable = true;
	  enableFishIntegration = true;
	};

	programs.starship = {
	  enable = true;
	  enableFishIntegration = true;
	};

	programs.yazi = {
	  enable = true;
	  enableFishIntegration = true;
	};

	home.packages = with pkgs; [

		fastfetch
		nix-search-cli
		cachix

		bat
		btop
		fd
		fzf
		grex
		lsd
		ripgrep
		rmtrash
		ttyd

		uv
		direnv
		docker
		docker-compose
		lazydocker
		lazygit
		devpod
		n8n

		evil-helix
		vscodium
		code-cursor
		# windsurf
		# zed-editor

		opencode
		gemini-cli
		# qwen-code

		# leetcode-cli

		bitwarden-desktop
		libreoffice
		obsidian
		vesktop
		
		nerd-fonts.jetbrains-mono
		gnomeExtensions.paperwm
		gnomeExtensions.blur-my-shell
	];

	home.stateVersion = "25.05";
	programs.home-manager.enable = true;

}
