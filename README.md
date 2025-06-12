# WayVNC Headless Remote Desktop Setup on Hyprland

This guide provides instructions for setting up a WayVNC-based headless remote desktop environment using Hyprland, NeatVNC, and AML.

## Prerequisites

Ensure your system is running Arch Linux or an Arch-based distribution.

##Steps to setup the VNC client-server

Run the `dependencies.sh` script once to set up the initial dependencies for server side.
You can change the specifications given in the last line as per your second laptop or any virtual display.

`NOTE: Installing wlroots is entirely optional and is only used to provide better remote support and increasing framebuffer rate`

##Starting up the vnc server

Now, on the same main machine, run the `vnc_host` script to start the wayvnc servers, keep the vnc server running for as long as you wish.
Once you wanna terminate the session, simply close the current session and run the `vnc_terminate` to properly terminate the virtual headless display created.

##Starting up the vnc client

Now, on your second machine, run the `vnc_client.sh` (change the ip according to your main/host machine). This starts up a vnc session with tigervnc
`NOTE : tigervnc should be updated every now and then to ensure the best performance`
Closing the session on your client is as simple as simply closing the display portal and doesnt nead any separate termination.
