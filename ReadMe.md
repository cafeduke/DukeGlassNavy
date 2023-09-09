# About

DukeGlassNavy is a customisation of the [BottleGlass](https://github.com/etiennegnome/BottleGlass) theme. Inspired by the BottlGlass Dark theme, DukeGlassNavy adds  shades of Navy to the theme.

# Prerequisite

Follow the guide to enable themes and extensions.

https://ubuntuhandbook.org/index.php/2022/05/install-themes-ubuntu-22-04/

# Installation

- Download the latest theme from [Releases](https://github.com/cafeduke/DukeGlassNavy/releases)
- Extract the zip to `$HOME/.themes`
- Open Gnome-Tweaks > Appearance and change the `Application` and `Shell Themes` to `DukeGlassNavy`

# ScreenShot

![Cal](/docs/images/cal.jpg)

![Files](/docs/images/files.jpg)

![GEdit](/docs/images/gedit.jpg)

![Picker](/docs/images/picker.jpg)

# Edit Theme

## Pre-requisite

```bash
# Install script such as gresource-extract
wget https://github.com/cafeduke/Themes/blob/master/Ubuntu/data/bin.zip -O /tmp/bin.zip && \
unzip -q /tmp/bin.zip -d $HOME/bin

# Add $HOME/bin to PATH
export PATH=${PATH}:${HOME}/bin
```

## Customize theme

We can edit the CSS or any other resource file, build and apply the theme as follows

```bash
# Clone source
git clone git@github.com:cafeduke/DukeGlassNavy.git $HOME/GitProjects

# We work on our custom theme in the 'work' directory
cd $HOME/GitProjects/DukeGlassNavy/work

# Extract archive DukeGlassNavy/gtk-3.0/gtk.gresource
extract.sh

# Edit files under gresource

# Generate archive -- This will generate $HOME/GitProjects/DukeGlassNavy.zip
build.sh

# Replace the existing DukeGlassNavy.zip
rm -rf $HOME/.themes/DukeGlassNavy
unzip $HOME/GitProjects/DukeGlassNavy.zip -d $HOME/.themes/
```

