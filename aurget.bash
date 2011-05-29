#!/bin/bash
# AURget
# ======
# A simple utility to grab a tarball from the Archlinux User Repository and
# untar it into the specified directory.

#/ Usage: aurget PKGNAME

# `AURDIR`: The directory in which local AUR packages are to be placed.
AURDIR=$HOME/.abs
# `AURURL`: The base url for grabbing aur tarballs.
AURURL="http://aur.archlinux.org/packages"
# Store the working directory in case `makepkg` maims `cd -`.

# Clean up any previous versions of the package.
rm -rf $AURDIR/$1

# Then fetch the package and untar/extract it.
cd $AURDIR
curl $AURURL/$1/$1.tar.gz | tar -xz
cd -

