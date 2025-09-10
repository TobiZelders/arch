# My Arch Linux Setup

This document lists the main tools I use on my Arch system, along with descriptions and installation commands.  
It serves as a reference for reinstallations or future setups.


## Table of Contents

1. [Official Repositories](#official-repositories)  
2. [AUR Packages](#aur-packages)  
3. [Breakdown of the tools](#tool-breakdown)
   - [Coding Tools](#coding)
   - [Network Management](#network-management)  
   - [System Information](#system-information)  
   - [Camera Support](#camera-support)  
   - [Bluetooth](#bluetooth)  
5. [Notes](#notes)  


## Official Repositories

Install the following packages from the official Arch repos:

```
sudo pacman -S \
  networkmanager nmtui \
  fastfetch btop \
  kitty thunar imv \
  gvfs gvfs-gphoto2 tumbler ffmpegthumbnailer thunar-volman
```

## AUR Packages

```
yay -S bluetui
```


# Tool Breakdown

### Coding

**Python**
```sudo pacman -S python python-pip python-pynvim```

### Network management

**nmtui**  
  Text-based UI for `NetworkManager`.  
  Lets me manage Wi-Fi and wired connections in the terminal.  

```sudo pacman -S networkmanager nmtui```

### System information

**fastfetch**  
  A modern and fast system information tool (like `neofetch`).  
  I use it to display basic system details in the terminal. 

```sudo pacman -S fastfetch```

### Camera support

**For my canon camera**
Packages for Canon camera integration and media handling:
  gvfs, gvfs-gphoto2 – for mounting and accessing camera files
  tumbler – generates thumbnails for media files
  ffmpegthumbnailer – generates video thumbnails
  thunar-volman – automates media handling in Thunar

```sudo pacman -S gvfs gvfs-gphoto2 tumbler ffmpegthumbnailer thunar-volman```

**To view media files**

```sudo pacman -S imv```

### Bluetooth

**For my bluetooth**

```yay pacman -S bluetui```

---

## Notes
- This document will grow as I add more tools to my setup.  
- Each entry includes a short description for future reference.  

