
### bridge control to link the wireless to the ethernet port
#ifconfig wlan 0.0.0.0
#ifconfig eth1 0.0.0.0
#brctl addbr br0
#brctl addif br0 wlan0
#brctl addif br0 eth1
#ifconfig br0 192.168.1.207 mask 255.255.255.0 gateway 10.10.0.1 up


# remove this from the final version
sudo ifconfig eth0 10.10.0.1
sudo ifconfig eth1 192.168.1.207
sudo ifconfig wlan0 0.0.0.0


#/etc/init.d/isc-dhcp-server restart
#sleep 10
#echo "1" > /proc/sys/net/ipv4/ip_forward
#hostapd -B /etc/hostapd/hostapd.conf &

# mount the usb stick
mount /dev/sda1 /home/pi/usbdrv
cp -f /home/pi/usbdrv/*.seq /home/pi/pixelpusher/sequences/

cd /home/pi/pixelpusher/
sudo python RpiPixelPusher.py

