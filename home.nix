{ config, pkgs, ... }:

{
  home.username = "ozy";
  home.homeDirectory = "/home/ozy";

  home.stateVersion = "25.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    pkgs.hello
  ];

  # Import config files
  imports = [
    ./conf/nvim.nix
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Programs
  programs = {
    git = {
      enable = true;
      userName = "Daegan Brown";
      userEmail = "daeganbrown03@gmail.com";
    };
  };
}
