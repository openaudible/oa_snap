# OpenAudible Snap Builder

Instructions to build snap for OpenAudible.
More info at https://openaudible.org



## Setup

Clone this repo... oa_snap may need to be moved to your home directory for snapcraft to work.
inspect and run pull.sh to get the latest release version of OpenAudible.

```
git clone https://github.com/openaudible/oa_snap.git
cd oa_snap
./pull.sh
```

This script gets the latest version and saves it in a directory called openaudible.
Also copies a few files into the directory and removes unneeded files.



## To Build
```
snapcraft
```

## Test Extract

```
rm -rf squashfs-root
unsquashfs *.snap
```

## Install 

```
sudo snap remove openaudible  # needed?
sudo snap install *.snap --devmode --dangerous
```


## Publish Info
```
snapcraft login
# snapcraft register openaudible
snapcraft upload --release=edge openaudible*.snap
```

## TODO
Need to get to work with x11 on a terminal.
How to set version from command line (or are we supposed to have a template and create a snapcraft.yaml ?? snapcraft -e version=3.5
Unable to "reveal a file in file manager" from application. Have tried nautalis --select, xdg-open /path, dbus-send, gdbus call, etc.
Best way to launch a java application ? See launch.sh ... Still see error messages going to standard out when running app.
Pros/cons of running with core20 ?



