#!/bin/sh

case "$1" in 
	start)
		echo 'start scull and misc-modules'
		/usr/bin/module_load faulty
		/usr/bin/scull_load
		modprobe hello
		;;
	stop)
		echo 'Stop scull and misc-modules'
		/usr/bin/module_unload faulty
		/usr/bin/scull_unload
		rmmod hello
		;;
	*)
	echo "USAGE: $0 <start|stop> - to loading and unloading kernel modules"
	exit 1
esac

exit 0
