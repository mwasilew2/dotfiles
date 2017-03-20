# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  boot.loader = {
    grub.enable = true;
    grub.version = 2;
    # Define on which hard drive you want to install Grub.
    grub.device = "/dev/sda"; # or "nodev" for efi only
    timeout = 1;
    # grub.efiSupport = true;
    # grub.efiInstallAsRemovable = true;
    # efi.efiSysMountPoint = "/boot/efi";
  };

  networking = {
    # hostName = "nixos"; # Define your hostname.
    # wireless.enable = true;  # Enables wireless support via wpa_supplicant, not nm
    networkmanager.enable = true;
  };

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    # desktop applications
    emacs25
    evince
    firefox
    libreoffice
    truecrypt
    keepass
    vim
    # desktop environment
    dmenu
    gnome3.gnome_control_center
    gnome3.gnome_terminal
    gnome3.nautilus
    i3
    i3status
    i3lock
    nitrogen
    powerline-fonts
    pulseaudioFull
    python35Packages.powerline
    xorg.xorgserver
    # network
    bind #bind-utils
    fping
    #networkmanager # installed using nixos networking
    networkmanagerapplet
    nettools
    nload
    nmap
    tcpdump
    tigervnc
    wirelesstools
    wpa_supplicant
    # hardware
    htop
    smartmontools
    sysstat
    stress
    # other
    at
    bc
    bashCompletion
    coreutils
    curl
    eject #util-linux
    exim
    fail2ban
    git
    git-lfs
    gitAndTools.gitFull # for gitk
    gnupg
    gnutar
    haveged
    ipmitool
    jwhois
    lsof
    mailutils
    #mlocate # locate installed and enabled using findutils
    ntp
    openssh
    openssl
    pinfo
    psmisc
    python3
    rsnapshot
    rsync
    strace
    telnet
    tmux
    trash-cli
    unzip
    watch
    wget
  ];

  # List services that you want to enable:

  # OpenSSH daemon
  services.openssh = {
    enable = false;
    permitRootLogin = "no";
    passwordAuthentication = false;
    forwardX11 = false;
    extraConfig = "";
    # gssapi is disabled by default (at least in the version of openssh used in NixOS)
  };

  # X11
  services.xserver = {
    enable = true;
    windowManager.i3.enable = true;
    layout = "pl";
    # xkbOptions = "eurosign:e";
    # Enable the KDE Desktop Environment.
    # displayManager.kdm.enable = true;
    # desktopManager.kde4.enable = true;
  };

  services.exim = {
    enable = true;
    config = "tls_advertise_hosts = *";
  };

  programs.ssh.startAgent = true;
  programs.bash.enableCompletion = true;
  services.locate.enable = true;
  services.printing.enable = false; # Enable CUPS to print documents.

  # Define a user account. Don't forget to set a password with ‘passwd’.

  users.extraUsers.michal = {
    isNormalUser = true;
    uid = 1000;
    extraGroups = [ "wheel" ];
    home = "/home/michal";
  };

  # Select internationalisation properties.

  # i18n = {
  #   consoleFont = "Lat2-Terminus16";
  #   consoleKeyMap = "us";
  #   defaultLocale = "en_US.UTF-8";
  # };

  # Set your time zone.
  time.timeZone = "Europe/London";

  # The NixOS release to be compatible with for stateful data such as databases.
  system.stateVersion = "16.09";

}
