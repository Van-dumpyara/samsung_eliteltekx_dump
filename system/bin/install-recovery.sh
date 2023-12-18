#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:11528192:524f70748099b7976a3b24011cce9bda4e97e086; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:10696704:26bd70705babd7890a20a2f512143118ff6d9806 EMMC:/dev/block/bootdevice/by-name/recovery 524f70748099b7976a3b24011cce9bda4e97e086 11528192 26bd70705babd7890a20a2f512143118ff6d9806:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
