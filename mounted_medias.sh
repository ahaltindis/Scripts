# /bin/bash
# Creator Ahmet A. <darchws@gmail.com>
# GitHub <https://github.com/darchws>
# A basic script that writes screen to mounted devices in /media

cd /media

# this loop is calculating how many mounted directory are there.
for i in *
do
	counter=$(($counter+1))
done

DIR=$(ls)

# Then we write this number to screen
if [ "$DIR" == "" ]; then
	echo -n "media(0)"
else
	echo -n "media($counter): "
fi

# reseting counter
counter=0

# now we are getting the names of mounted directories and write them screen
# too.
for i in *
do
	counter=$(($counter+1))
	if [ "$i" != "*" ] && [[ ! "$i" =~ ^U3|cd|dvd|fl ]]; then
		if [ "$counter" != "1" ]; then
			echo -n ", "
		fi
		echo -ne "'$i'"
	fi
done
echo ""
