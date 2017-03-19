# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  # boot.loader.grub.efiSupport = true;
  # boot.loader.grub.efiInstallAsRemovable = true;
  # boot.loader.efi.efiSysMountPoint = "/boot/efi";
  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only

  # networking.hostName = "nixos"; # Define your hostname.
  #networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;

  # Select internationalisation properties.
  # i18n = {
  #   consoleFont = "Lat2-Terminus16";
  #   consoleKeyMap = "us";
  #   defaultLocale = "en_US.UTF-8";
  # };

  # Set your time zone.
  time.timeZone = "Europe/London";

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

  # Enable the OpenSSH daemon.
  services.openssh.enable = false;
  programs.ssh.startAgent = true;

  programs.bash.enableCompletion = true;

  # Enable CUPS to print documents.
  services.printing.enable = false;

  services.locate.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.layout = "pl";
  # services.xserver.xkbOptions = "eurosign:e";

  # Enable the KDE Desktop Environment.
  # services.xserver.displayManager.kdm.enable = true;
  # services.xserver.desktopManager.kde4.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.extraUsers.michal = {
    isNormalUser = true;
    uid = 1000;
    extraGroups = [ "wheel" ];
    home = "/home/michal";
  };

  # The NixOS release to be compatible with for stateful data such as databases.
  system.stateVersion = "16.09";

}
