#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:17417516:d990a3ba63cf6f74ff578ff46bc2f6cd61b84a00; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:12375336:ae8f50c4c1d93388a8136153765c6aa4f44dba54 EMMC:/dev/block/bootdevice/by-name/recovery d990a3ba63cf6f74ff578ff46bc2f6cd61b84a00 17417516 ae8f50c4c1d93388a8136153765c6aa4f44dba54:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
