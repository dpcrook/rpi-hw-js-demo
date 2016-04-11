
# short version

SSH to your pi and start the server

```bash
ssh pi@<PI_NAME>.local
cd rgb-slider
screen -R
node index.js
<Ctrl>-a d
```

# Details

## ssh to pi

```bash
ssh pi@192.168.8.<###>
cd rgb-slider
screen -R
```

 - `<###>` is number corresponding to your Pi's IP address.  
 - Password for `pi` account: **`raspberry`**

## Launch node.js server

Now, run a *node.js* server that controls the RGB LED.

*NOTE: The following steps assume you are in a **`screen`** session.*

```bash
# create a new window
<Ctrl>-a c

# navigate to node.js project directory if you are not there
cd ~/rgb-slider

# launch the server
node index.js
# via raspi-demo Wi-fi, connect to address it outputs, like http://192.168.8.101:3000

# (options) DETACH from screen session
<Ctrl>-a d
```


### An aside on screen commands
`screen` is a handy utility that will allow you to connect/re-connect to running shell sessions.  

It can be used to leave a script running after detaching, which we will be doing with our **node.js** server.

Screen does most of its work using a "Command key" which is `<Ctrl>-a` `^A`

Keystrokes          | Action
------------------- | :---------------------:
`<Ctrl>-a d`        | "D"etach
`<Ctrl>-a a`        | `<Ctrl>-a`
`<Ctrl>-a c`        | "C"reate another window
`<Ctrl>-a <Ctrl>-a` | Other window
`<Ctrl>-a "`        | List windows
`<Ctrl>-a A`        | Name this window
`<Ctrl>-a ?`        | Show HELP

There are many additional commands

To re-attach to a detached screen session (or if none, start a screen session), in BASH you can run:

```
screen -R
```

You can also have multiple sessions connected to a single `screen` instance.  You connect this way using:

```
screen -x
```
