#!/bin/sh
#sudo systemctl stop springserver
PID=$(ps -ef | grep -v grep | grep 'java -jar /home/ubuntu/build/libs/ROOT.war' | awk '{print $2}')
if [ -n "$PID" ] then
	kill -9 $PID
	sleep 10
fi
