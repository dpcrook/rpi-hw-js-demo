
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
sudo rpi-update
sudo reboot
```

## install `johnny-five` and more



