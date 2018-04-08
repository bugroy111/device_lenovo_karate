#! /vendor/bin/sh

# remount system, vendor as read-write to allow
# making symlinks
mount -o remount,rw /system
mount -o remount,rw /vendor

# Audio
mkdir -p /system/etc/acdbdata/msm8937-karate-snd-card/

ln -sf /vendor/etc/acdbdata/msm8937-karate-snd-card/Bluetooth_cal.acdb /system/etc/acdbdata/msm8937-karate-snd-card/Bluetooth_cal.acdb
ln -sf /vendor/etc/acdbdata/msm8937-karate-snd-card/General_cal.acdb /system/etc/acdbdata/msm8937-karate-snd-card/General_cal.acdb
ln -sf /vendor/etc/acdbdata/msm8937-karate-snd-card/Global_cal.acdb /system/etc/acdbdata/msm8937-karate-snd-card/Global_cal.acdb
ln -sf /vendor/etc/acdbdata/msm8937-karate-snd-card/Handset_cal.acdb /system/etc/acdbdata/msm8937-karate-snd-card/Handset_cal.acdb
ln -sf /vendor/etc/acdbdata/msm8937-karate-snd-card/Hdmi_cal.acdb /system/etc/acdbdata/msm8937-karate-snd-card/Hdmi_cal.acdb
ln -sf /vendor/etc/acdbdata/msm8937-karate-snd-card/Headset_cal.acdb /system/etc/acdbdata/msm8937-karate-snd-card/Headset_cal.acdb
ln -sf /vendor/etc/acdbdata/msm8937-karate-snd-card/Speaker_cal.acdb /system/etc/acdbdata/msm8937-karate-snd-card/Speaker_cal.acdb

chmod 755 /system/etc/acdbdata/
chmod 755 /system/etc/acdbdata/msm8937-karate-snd-card/

# remount system, vendor as read-only to make
# sure android is secure again
mount -o remount,ro /system
mount -o remount,ro /vendor
