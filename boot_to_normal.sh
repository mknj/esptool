G=23 # GPIO0
B=24 # CH_PD
G=2 # GPIO0
B=3 # CH_PD
echo $G > /sys/class/gpio/export
echo out >/sys/class/gpio/gpio$G/direction
echo $B > /sys/class/gpio/export
echo out >/sys/class/gpio/gpio$B/direction

echo set boot-to-normal-mode
echo 1 >/sys/class/gpio/gpio$G/value
echo power off
echo 0 >/sys/class/gpio/gpio$B/value
sleep 1
echo power on
echo 1 >/sys/class/gpio/gpio$B/value
sleep 1

