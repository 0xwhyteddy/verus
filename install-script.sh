#!/bin/bash

# Update system
 apt update && apt upgrade -y

# Install dependencies
 apt install software-properties-common -y
 add-apt-repository ppa:deadsnakes/ppa -y

# Install Python and pip
 apt install python3.10 -y
 apt install python3-pip -y
 apt-get install -y python3

#Install Python 3.10
apt update && sudo apt upgrade -y
apt install software-properties-common -y
add-apt-repository ppa:deadsnakes/ppa
apt install python3.10
apt install python3-pip
#Install Requirements
pip install requests
pip install asyncio
pip install aiohttp
pip install loguru
pip install cloudscraper
pip install curl_cffi
pip install fake_useragent==1.5.1
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
