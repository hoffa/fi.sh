#!/bin/sh

alias PlistBuddy=/usr/libexec/PlistBuddy
bluetooth_plist=/Library/Preferences/com.apple.Bluetooth.plist
ps3_controller_plist=Controller.plist

delete () {
    PlistBuddy -c "Delete :DeviceCache:$addr:$1" $bluetooth_plist &> /dev/null
}

echo "Available devices:"
for addr in `PlistBuddy -c "Print :DeviceCache" $bluetooth_plist | grep -ao "..-..-..-..-..-.."`
do
    echo "$addr: `PlistBuddy -c "Print :DeviceCache:$addr:Name" $bluetooth_plist`"
done

read -p "Address: " addr

cp $bluetooth_plist $bluetooth_plist.backup

delete ClassOfDevice
delete ClockOffset
delete InquiryRSSI
delete LastServiceUpdate
delete Manufacturer
delete PageScanMode
delete PageScanPeriod
delete PageScanRepetitionMode
delete ProductID
delete Services
delete SupportedFeatures
delete VendorID

PlistBuddy -c "Merge $ps3_controller_plist :DeviceCache:$addr" $bluetooth_plist

defaults read /Library/Preferences/com.apple.Bluetooth.plist &> /dev/null

echo "Done."