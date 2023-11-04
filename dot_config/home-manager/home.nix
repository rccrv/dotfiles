{ pkgs, ... }:
{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "ricardo";
  home.homeDirectory = "/home/ricardo";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "22.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    pkgs.fd
    pkgs.fq
    pkgs.fx
    pkgs.yq
    pkgs.duf
    pkgs.gdu
    pkgs.fnm
    pkgs.fzf
    pkgs.k9s
    pkgs.cotp
    pkgs.glow
    pkgs.grex
    pkgs.hurl
    pkgs.kind
    pkgs.krew
    pkgs.solc
    pkgs.tilt
    pkgs.caddy
    pkgs.cfssl
    pkgs.delta
    pkgs.gitui
    pkgs.dbmate
    pkgs.mkcert
    pkgs.rclone
    pkgs.chezmoi
    pkgs.kubectl
    pkgs.lazygit
    pkgs.go-task
    pkgs.ripgrep
    pkgs.minikube
    pkgs.opentofu
    pkgs.hyperfine
    pkgs.miniserve
    pkgs.difftastic
    pkgs.lazydocker
    pkgs.pipe-rename
    pkgs.kubernetes-helm
    pkgs.tmux-mem-cpu-load
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
  };

  home.sessionVariables = {
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
