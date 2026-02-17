{ config, pkgs, ... }:

{
  programs.neovim = 
    let
      toLua = str: "lua << EOF\n${str}\nEOF\n";
      toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
    in
    {
    enable = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    initLua = ''
      -- General Settings
      ${builtins.readFile ../nvim/options.lua}

    '';

    plugins = with pkgs.vimPlugins; [
	  {
        plugin = comment-nvim;
	    config = toLua "require(\"Comment\").setup()";
	  }
	  {
	    plugin = gruvbox-nvim;
	    config = "colorscheme gruvbox";
	  }
      plenary-nvim
	  neodev-nvim


	  telescope-fzf-native-nvim
	


	  luasnip
	  friendly-snippets

	  lualine-nvim
	  nvim-web-devicons

        

	  vim-nix
    ];
  };
}
