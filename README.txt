# OpenAudible Snap Builder

## To Build
```
snapcraft
```

## Test Extract

```
rm -rf squashfs-root
unsquashfs *.snap
```

## Install Test

```
sudo snap remove openaudible
sudo snap install *.snap --devmode --dangerous
```


## Publish Info
```
snapcraft login
snapcraft register openaudible
snapcraft upload --release=edge openaudible*.snap
```

## TODO
Need to get to work with x11 on a terminal 

