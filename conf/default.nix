{ pkgs, inputs, ... }:
{
  imports = [
    ./nvim.nix
    ./kitty.nix
  ];
}
