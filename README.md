# verus-ccminer
ccminer verus with luckpool

Download & install latest arm64-v8a

    https://github.com/termux/termux-app/releases/download/v0.118.0/termux-app_v0.118.0+github-debug_arm64-v8a.apk

Get Termux ready

    yes | pkg update && pkg upgrade
    yes | pkg install libjansson wget nano

Download ccminer, config, start

    mkdir ccminer && cd ccminer
    wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/ccminer
    wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/start.sh
    chmod +x ccminer start.sh

edit nano

    nano config.json

copy program 

    {
          "pools":
            [{
                "name": "NA-LUCKPOO8L",
                "url": "stratum+tcp://ap.luckpool.net:3956",
                "timeout": 180,
                "disabled": 1
            }],

        "user": "RMwNqKgR3cvjddzwaWPuxQVZozs729NB9U.min03",
        "pass": "",
        "algo": "verus",
        "threads": 8,
        "cpu-priority": 1,
        "cpu-affinity": -1,
        "retry-pause": 10,
        "api-allow": "192.168.0.0/16",
        "api-bind": "0.0.0.0:4068"
    }
 

start

    ~/ccminer/start.sh

setting auto run

    nano ../usr/etc/bash.bashrc

up code 

    cd ccminer/&&./start.sh
sepolia mining

    https://sepolia-faucet.pk910.de/
address

    0x5C0cbee52790A729c7b9A47D67c7E95C7eA7df4C
