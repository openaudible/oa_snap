# OpenAudible Snap Builder

Instructions to build snap for OpenAudible.
More info at https://openaudible.org

## About
This is still a work in progress. Getting some errors and warnings. 

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
sudo snap remove openaudible # remove previous 
sudo snap install *.snap --devmode --dangerous
```

## Troubleshoot permissions
```
sudo snap install snappy-debug
sudo journalctl --output=short --follow --all | sudo snappy-debug -r
```

## Run
openaudible --debug # run in terminal mode
openaduble --version # show version and exit
openaudible --help # get simple help
openaudible # run normally


## Publish Info
```
snapcraft login
# snapcraft register openaudible
snapcraft upload --release=edge openaudible*.snap
```

## TODO
Pros/cons of running with core20 ?


# Restart multipass:
` sudo snap restart multipass.multipassd

