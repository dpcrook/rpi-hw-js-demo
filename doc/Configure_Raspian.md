
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

### Build `pi-blaster`

https://github.com/sarfata/pi-blaster


- install pre-reqs

```bash
sudo apt-get install autoconf git-core
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

- install

```bash
sudo make install
```

- run

```
sudo ./pi-blaster
```


# Acknowledgements

- https://github.com/Kylir/rgb-slider project had the code available for this.

# License

MIT License: see LICENSE.txt
