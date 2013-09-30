# iBeacon.sh
Generate iBeacon script

# How to use
* Install bluez.
* Switch BT device to BTLE advertise mode.

```sh
$ sudo hciconfig hci1 leadv
```

* Change UUID, MAJOR, MINOR, MEASURED_POWER and DEVICE in script.
* Run script.
