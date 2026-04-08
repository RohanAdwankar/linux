{ config, pkgs, username, homeDirectory, ... }:
{
  home.username = username;
  home.homeDirectory = homeDirectory;
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    cargo
    neovim
    nodejs_22
    pnpm
    rustc
    uv
    python312
  ];
}
