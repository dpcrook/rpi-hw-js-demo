
# Install and setup Raspbian


- uSD imaged from `2015-05-05-raspbian-wheezy.zip` official image

- boot with monitor and keyboard and wired Ethernet
  1. expand filesystem
  1. reboot

- update packages list
  
```bash
sudo apt-get update
sudo apt-get install dselect screen raspi-config
sudo raspi-config
```

- configure some more things in `raspi-config`
  1. Internationalization
     - en.US_utf8 *
     - Mountain time zone
  1. change hostname

- update all packages

```bash
sudo dselect
```

- update kernel and drivers and reboot

```bash
##sudo rpi-update
sudo rpi-update 46d1795
sudo reboot
```

#### why an older version

https://github.com/sarfata/pi-blaster/issues/47

```
EDIT:
I have found a very temporary fix by installing rpi-update (https://github.com/Hexxeh/rpi-update) and downgrading to this firmware: Hexxeh/rpi-firmware@46d1795 (Linux 4.0.9)
```

https://github.com/sarfata/pi-blaster/pull/49

```
EDIT 2: 30-Sep-2015

This issue with the /dev mailbox on 4.1.x kernels has been fixed in the latest
pi-blaster
```

#### hint on running commands simultaneously in multiple SSH sessions

```bash
csshX pi@demo-rpi[3-10]
```

[csshX](https://github.com/brockgr/csshx) is a wonderful utility for this.  On OS X, it can be most eassily obtained using [Homebrew](http://brew.sh/):
```brew install csshx```



## Install Node,  and more

### Install node.js

- Pi (version 1), also works on 2

```bash
wget http://node-arm.herokuapp.com/node_latest_armhf.deb
dpkg-deb --info node_latest_armhf.deb
sudo dpkg -i node_latest_armhf.deb
```

<!-- - Pi (version 2)  -->

<!-- ```bash -->
<!-- curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash - -->
<!-- sudo apt-get install -y build-essential python-dev python-rpi.gpio nodejs -->
<!-- ``` -->

### Build `pi-blaster` and install

https://github.com/sarfata/pi-blaster


- install pre-reqs

```bash
sudo apt-get -y install autoconf git-core
```

- get source code

```bash
git clone https://github.com/sarfata/pi-blaster.git
cd pi-blaster
```


- build

```bash
./autogen.sh
./configure
make
```

- install (will start on reboot)

```bash
sudo make install
```

<!-- - run -->

<!-- ``` -->
<!-- sudo ./pi-blaster -->
<!-- ``` -->


### install `rgb-slider` node app

```bash
cd
git clone https://github.com/dpcrook/rgb-slider.git
cd rgb-slider
npm install
```


# Acknowledgements

- https://github.com/Kylir/rgb-slider project had the code available for this.

- https://github.com/sarfata/pi-blaster project is a library for generating PWM
on the Raspberry Pi GPIOs
  - there is a node wrapper for it: https://github.com/sarfata/pi-blaster.js


# License

MIT License: see LICENSE
