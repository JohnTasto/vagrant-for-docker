#!/bin/bash

# Install docker-compose
mkdir -p /usr/local/bin
chown bargee:bargees /usr/local/bin
su bargee -c "wget -O /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/1.10.0/run.sh"
chmod +x /usr/local/bin/docker-compose
echo PATH="/usr/local/bin:$PATH" >> /home/bargee/.bashrc

# Start the latest version of Docker
echo "sudo /etc/init.d/docker restart latest" >> /home/bargee/.bashrc
