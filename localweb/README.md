
## Installing localweb server on a Pi

Assumes you already have nodejs installed.


```
git clone git@github.com:idcrook/rpi-hw-js-demo.git
cd rpi-hw-js-demo
cd localweb/
vi ./runme.sh
	# change first_time= to first_time=1 and back after
./runme.sh
```

Will install `nginx`, node util `forever`, and configure a caching proxy.


## Running localweb


```
cd ~/rpi-hw-js-demo/localweb
./runme.sh
```
