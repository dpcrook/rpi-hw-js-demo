# rpi-hw-js-demo
A collection of documents and code for October 2015 NoCo JavaScript Meetup


## Presenting

Pre-reqs:
 - port 8000 available
 - port 35729 available (live reload)


```bash
npm install
grunt serve
```

### Using docker


#### Vanilla docker on Mac OS X

```
docker pull danidemi/docker-reveal.js
docker run -d -v $(pwd):/slides/ -p 8000:8000 "danidemi/docker-reveal.js:latest"
open http://$(docker-machine ip default):8000
```
