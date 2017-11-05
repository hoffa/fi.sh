`fi.sh`
=======

`fi.sh` is a tiny tool that enables the use of third-party Bluetooth PS3 controllers on OS X by pretending to be a genuine PS3 controller. Tested on OS X Mavericks.

Credit goes to [MrRocketman](https://github.com/MrRocketman), [clobber](https://github.com/clobber) and [Robert Louis Murphy](http://apple.stackexchange.com/questions/75889/anyone-able-to-connect-gioteck-vx-1-ps3-controller-via-bluetooth) for figuring out how to make it all work.

## Steps
1. Open Bluetooth settings from System Preferences and turn on Bluetooth. ![](http://i.imgur.com/IJrpdui.png)
2. Connect the controller with the USB cable. After a few seconds it should show up with status *Not Connected*. ![](http://i.imgur.com/YTG3zge.png)
3. Press the controller's middle button and disconnect the cable. The lights on the controller should start blinking faster and the status should change to *Connected*. ![](http://i.imgur.com/42nnl9U.png)
4. Turn off Bluetooth.
5. Open up Terminal and `cd` your way to the `fi.sh` directory.
6. Launch the program by typing `sudo ./fi.sh`. After entering your password, a list of available Bluetooth devices should show up. Copy the address of your controller (the number stuff in front of the device name) and press enter. If everything goes well, a modest `Done.` should show up. ![](http://i.imgur.com/7ZrNM9g.png)
7. If your controller is still blinking like crazy just wait for it to stop. Once it's over, turn on Bluetooth.
8. Press the middle button on your controller and wait for it to connect once again. This time everything should work smooth like butter.
9. Profit!
10. If OpenEmu still don't see the wireless controller, reboot. After reboot it will work wirelessly.

By the way, on my controller no lights are lit when it's working properly, just so you know. Oh and you only need to do those steps once. Once it's working, it's working.
