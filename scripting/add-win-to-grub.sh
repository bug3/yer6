# If Windows is not showing in the grub menu, you can add it as custom with this script

textFile="appendices.txt"
grub40_custom="/etc/grub.d/40_custom"
boot_efi_uuid=$(sudo lsblk -f -o UUID,MOUNTPOINT | grep /boot/efi | awk '{ print $1 }')
scriptSrc="https://github.com/bug3/yer6/raw/master/scripting/append-remove.sh"

winEntry="
menuentry \"Windows\" {
        insmod part_gpt
        insmod fat
        search --no-floppy --fs-uuid --set $boot_efi_uuid
        chainloader /EFI/Microsoft/Boot/bootmgfw.efi
}"

echo "$winEntry" > $textFile
sudo bash -c "source <(curl -sL $scriptSrc) $grub40_custom $textFile; appendText"
