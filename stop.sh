#!/bin/sh
if [ -d /home/ubuntu/build/ ]; then
    sudo rm -rf /home/ubuntu/build/
fi
sudo mkdir -vp /home/ubuntu/build/

#sudo systemctl stop springserver
PID=$(ps -ef | grep -v grep | grep 'java -jar /home/ubuntu/build/ROOT.war' | awk '{print $2}')
if [ -n "$PID" ]; then
	kill -9 $PID
	sleep 10
fi
