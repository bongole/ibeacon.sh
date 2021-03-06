#!/bin/sh
UUID="C8BD140A-0A34-4C0C-9933-86F21A5863FF"
MAJOR=0
MINOR=0
MEASURED_POWER=199
BT_DEV=${1:-hci1}

TMP_UUID=$(echo $UUID|tr -d '-'|sed  's/\(..\)/\1 /g')
TMP_MAJOR=$(printf '%04X' $MAJOR|sed 's/\(..\)/\1 /g')
TMP_MINOR=$(printf '%04X' $MINOR|sed 's/\(..\)/\1 /g')
TMP_MEASURED_POWER=$(printf '%0X' $MEASURED_POWER)

hciconfig $BT_DEV up
hcitool -i $BT_DEV cmd 0x08 0x0008 1f 02 01 1a 1a ff 4c 00 02 15 $TMP_UUID$TMP_MAJOR$TMP_MINOR$TMP_MEASURED_POWER 00
hciconfig $BT_DEV leadv 3
