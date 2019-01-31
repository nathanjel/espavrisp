#!/bin/bash

for i in sdkconfig ../sdkconfig
do
	if [ -f $i ]; then
		source $i
	fi
done

avrdude -c avrisp -b 115200 -p m128 -P $CONFIG_ESPTOOLPY_PORT -n
