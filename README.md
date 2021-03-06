
# rpi-hw-js-demo

A collection of documents and code for Raspberry Pi RGB LED demonstration by @idcrook.

- [Presentation](http://idcrook.github.io/rpi-hw-js-demo/index.html)
  - [Demo slides](http://idcrook.github.io/rpi-hw-js-demo/RGB-LED-demo.html)
    - [demo pt. 1](https://github.com/idcrook/rpi-hw-js-demo/blob/gh-pages/demo_notes/demo1.md)
    - [demo pt. 2](https://github.com/idcrook/rpi-hw-js-demo/blob/gh-pages/demo_notes/demo2.md)
  - Code (see below for more on how Pi's were configured): 
    - [rgb-slider](https://github.com/idcrook/rgb-slider) - node.js app, runs on Pi
      - client html/JS in `public`
  
  
Originally created for October 2015 NoCo JavaScript Meetup demo.

## outline / previous work

 - [x] [Oct'15 Meetup Event Page](http://www.meetup.com/NoCo-JavaScript-Meetup/events/224542835/)
   - [x] [Network info](http://idcrook.github.io/rpi-hw-js-demo/network.html)
   - [x] Teaser slides
 
 - [x] [Introduction Presentation Slides](http://idcrook.github.io/rpi-hw-js-demo/index.html)
 - [x] RGB LED demo
   - [x] [Configuring the Pis](doc/Configure_Raspian.md) - @idcrook already has done this part
     - [x] [info](doc/rgb-slider.md)
     - [x] [code](https://github.com/idcrook/rgb-slider)
       - [local webserver](https://github.com/idcrook/rpi-hw-js-demo/tree/master/localweb) just-in-case
   - [x] [demo, pt. 1](http://idcrook.github.io/rpi-hw-js-demo/RGB-LED-demo.html)
     - [x] Demo webpage and sliders
     - [x] Background on LEDs
     - [x] wiring instructions
     - [x] instructions on connecting via SSH and launching the node server
   - [x] demo, pt. 2
     - [x] Describe key components of the code on server and client
     - [x] Describe PWM and HSV color
     - [x] Ideas for improvements
   
## Related repos

- [Source code for RGB demo](https://github.com/idcrook/rgb-slider)

# Current status

![Not exactly](http://github.crookster.org/rpi-hw-js-demo/demo_notes/power-cables-frustrated-guy-clarkk.jpg)

See you [Monday at the Meetup](http://www.meetup.com/NoCo-JavaScript-Meetup/events/224542835/)

## early status

![Installing and testing on demo Raspberry Pi](doc/images/Installing_stuff_and_testing.jpeg)
