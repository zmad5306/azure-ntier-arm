#!/bin/bash
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
sudo apt-get install -y nodejs
git clone https://github.com/zmad5306/node-client-1.git
cd node-client-1
npm i
sudo cp node-cliet-1.service /etc/systemd/system/node-client-1.service
sudo systemctl enable node-client-1.service
sudo systemctl start node-client-1.service