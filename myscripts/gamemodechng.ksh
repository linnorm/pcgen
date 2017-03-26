#!/bin/ksh

for filename in `find /usr/share/games/pcgen/data/customsources/ -name *.pcc`
do
	if `grep "^GAMEMODE:DnD" $filename`
	then
		print $filename
		sed 's/^GAMEMODE:DnD/GAMEMODE:3e/' $filename >> $filename.new
	fi
done

