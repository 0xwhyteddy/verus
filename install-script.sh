#!/bin/bash

# Update system
sudo apt update && apt upgrade -y

# Install dependencies
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y

# Install Python and pip
sudo apt install python3.10 -y
sudo apt install python3-pip -y

# Install Python packages
sudo pip install requests asyncio aiohttp loguru cloudscraper curl_cffi fake_useragent

# Clone repository
git clone https://github.com/0xwhyteddy/nodepay.git

# Navigate to directory
cd nodepay

# Install and setup screen
#apt-get install -y screen

# Start the application in a screen session
#screen -dmS Nodepay bash -c "python3 run_without_proxy.py"
python3 run_without_proxy.py
#echo "Installation complete. Application is running in screen session 'Nodepay'"
