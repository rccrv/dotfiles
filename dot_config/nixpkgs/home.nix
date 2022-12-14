{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "ricardo";
  home.homeDirectory = "/home/ricardo";

  # Packages to install
  home.packages = [
    pkgs.fd
    pkgs.fx
    pkgs.gdu
    pkgs.fnm
    pkgs.fzf
    pkgs.k9s
    pkgs.glow
    pkgs.grex
    pkgs.kind
    pkgs.caddy
    pkgs.cfssl
    pkgs.delta
    pkgs.gitui
    pkgs.dbmate
    pkgs.mkcert
    pkgs.chezmoi
    pkgs.firectl
    pkgs.go-task
    pkgs.ripgrep
    pkgs.miniserve
    pkgs.terraform
    pkgs.firecracker
    pkgs.pipe-rename
    pkgs.tmux-mem-cpu-load
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
