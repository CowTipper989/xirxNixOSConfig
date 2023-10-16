# This is my personal NixOS system configuration

-----------

# Setting up system
1. Set up the `gh` cli app with `gh auth login`
1. Navigate to home directory, create a new folder called,  `mySystem`
2. Navigate to the new `mySystem` directory and run `gh repo clone CowTipper989/xirxNixOSConfig` in a terminal
4. Run `mv /etc/nixos/hardware-configuration.nix ~/mySystem/nixos` to move the hardware config for your current system to mysystem
3. Run `sudo rm -rf /etc/nixos` to remove the old nixos config
4.  Then run `sudo ln -s ~/mySystem/nixos /etc/nixos` to link the config folder to the root directory where the system will look for it

# Rebuilding the System
Run the following command to rebuild the system according to the nixos config file
```bash
sudo nixos-rebuild switch --flake ~/mysystem/#myNixos
```