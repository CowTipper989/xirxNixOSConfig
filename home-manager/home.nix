{ config, pkgs, ... }:

{
  home.username = "nixtest";
  home.homeDirectory = "/home/nixtest";
  home.stateVersion = "22.11"; # Please read the comment before changing.

  home.packages = [
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  home.sessionVariables = {
    EDITOR = "nano";
  };

  # Configure git
  programs.git = {
    enable = true;
    userName = "Luke Wells";
    userEmail = "wellsluke88@gmail.com";
  };

  # Configure zsh
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
  };

  ###### Theming #######
  gtk.enable = true;
  qt.enable = true;

  # QT Theming
  qt.platformTheme = "gtk";
  qt.style.name = "adwaita-dark";
  qt.style.package = pkgs.adwaita-qt;

  # GTK Theming
  #

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
