#!/usr/bin/bash

source stats.sh

running="true"


echo "--- Pomodoro Timer (25-5) ---"
echo "Do 'CTRL + C' to quit"
echo
echo

if [ "$1" == "" ]
then
	while [[ "$running" == "true" ]];
	do

		read -p "Press 'Return' to start"
		echo

		echo "Timer Has Started: Start Working"
		sleep 1500

		echo "Timer Has Ended: Take a Break"
		sleep 300
		stats_sessions=$((stats_sessions+1))

done

elif [ "$1" == "-s" ]
then 
	echo "Pomodoro Sessions completed: $stats_sessions"

fi
