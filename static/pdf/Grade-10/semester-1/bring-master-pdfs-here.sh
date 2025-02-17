#!/usr/bin/env bash

for class in `find ~/Documents/notes/Grade-10/semester-1/ -maxdepth 1`; do
	if [[ -d ${class} ]]; then
		for master in `find ${class} -name "master.pdf"`; do
			if [[ $(basename ${class}) != "semester-1" ]]; then
				echo "$(basename ${master})"
				echo "$(basename ${class})"
				cp ${class}/master.pdf ~/Documents/Website/static/pdf/Grade-10/semester-1/$(basename ${class}).pdf
			fi
		done
	fi
done

