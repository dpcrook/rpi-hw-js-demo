# ssh to pi
 `<##>` below is the number 23-30 depending on the pi.  The password is `raspberry`

```
ssh pi@192.168.8.<##>
cd rgb-slider
screen -R
<Space>
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

# Launch our node.js server
Once you are ssh-ed into Pi and in a running `screen` session, you can run the node.js server that controls the RGB LED.

```
# assumes we are in a running screen session

# create a new window
<Ctrl>-a c

# go to project directory if you are not there
cd ~/rgb-slider

# launch the server
node index.js

# it will output a web address and port, like http://192.168.8.25:3000
# you can now connect to this website in your browser

# (OPTIONAL) detach from screen session
<Ctrl>-a d
```
