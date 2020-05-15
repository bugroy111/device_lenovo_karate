#! /vendor/bin/sh

# lenovo id
BOARD_ID_PATH=/sys/devices/soc0/platform_lenovo_hardware_type
BOARD_ID="$(cat $BOARD_ID_PATH 2>/dev/null)"

if [ "$BOARD_ID" = "S82938AA1" ] || [ "$BOARD_ID" = "S82938BA1" ] || [ "$BOARD_ID" = "S82937AA1" ] || [ "$BOARD_ID" = "S82937DA1" ]; then
   setprop persist.radio.multisim.config dsds
fi
