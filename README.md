# goal of this repo

minimal, easy, specific system

* not use unnecessory package
* replace the book package ex) vim -> neovim
* build system using just make, bash

# struct of the system partition

1. LFS
    1. /boot/efi FAT32 256M
    1. /         btrfs 455G
1. Arch Linux (host system)
    1. /boot/efi FAT32 256M
    1. /         btrfs 10.3G

# spec of host system

## result of [version-check.sh](.version-check.sh)
```
OK:    Coreutils 9.4    >= 7.0
OK:    Bash      5.2.26 >= 3.2
OK:    Binutils  2.42.0 >= 2.13.1
OK:    Bison     3.8.2  >= 2.7
OK:    Diffutils 3.10   >= 2.8.1
OK:    Findutils 4.9.0  >= 4.2.31
OK:    Gawk      5.3.0  >= 4.0.1
OK:    GCC       13.2.1 >= 5.1
OK:    GCC (C++) 13.2.1 >= 5.1
OK:    Grep      3.11   >= 2.5.1a
OK:    Gzip      1.13   >= 1.3.12
OK:    M4        1.4.19 >= 1.4.10
OK:    Make      4.4.1  >= 4.0
OK:    Patch     2.7.6  >= 2.5.4
OK:    Perl      5.38.2 >= 5.8.8
OK:    Python    3.11.7 >= 3.4
OK:    Sed       4.9    >= 4.1.5
OK:    Tar       1.35   >= 1.22
OK:    Texinfo   7.1    >= 5.0
OK:    Xz        5.4.6  >= 5.0.0
OK:    Linux Kernel 6.7.4 >= 4.14
OK:    Linux Kernel supports UNIX 98 PTY
Aliases:
OK:    awk  is GNU
OK:    yacc is Bison
OK:    sh   is Bash
Compiler check:
OK:    g++ works
```
## result of `pacman -Qqe`
```
amd-ucode
base
base-devel
chezmoi
dust
efibootmgr
fzf
gdm
git
gnome-control-center
gnome-shell
grub
ibus-hangul
linux
linux-firmware
neovim
networkmanager
npm
os-prober
vivaldi
wezterm
wget
xf86-video-amdgpu
zsh
```

# build step

## package sorces download
```
mkdir source
wget --input-file=wget-list-systemd --continue --directory-prefix=sources
curl -O https://www.linuxfromscratch.org/lfs/view/stable-systemd/md5sums && mv md5sums sorces && cd sorces
md5sum -c md5sums
```
