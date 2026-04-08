{ config, pkgs, username, homeDirectory, ... }:
{
  home.username = username;
  home.homeDirectory = homeDirectory;
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    cargo
    neovim
    nerd-fonts.fira-code
    rustc
    uv
    python312
  ];

  xdg.configFile."fontconfig/conf.d/10-monospace-nerd-font.conf".text = ''
    <?xml version="1.0"?>
    <!DOCTYPE fontconfig SYSTEM "urn:fontconfig:fonts.dtd">
    <fontconfig>
      <alias>
        <family>monospace</family>
        <prefer>
          <family>FiraCode Nerd Font Mono</family>
          <family>FiraCode Nerd Font</family>
        </prefer>
      </alias>
    </fontconfig>
  '';
}
