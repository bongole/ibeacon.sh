# iBeacon.sh
Generate iBeacon script

# How to use
1. Install bluez.
2. Switch BT device to BTLE advertise mode.
```sh
$ sudo hciconfig hci1 leadv
```
3. Change UUID, MAJOR, MINOR, MEASURED_POWER and DEVICE in script.
4. Run script.
