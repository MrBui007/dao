#!/bin/bash
apt-get update && 
apt-get -y install build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake git &&
sudo sysctl vm.nr_hugepages=128 &&
sudo sysctl -w vm.nr_hugepages=128 && wget https://github.com/fireice-uk/xmr-stak/releases/download/2.10.4/xmr-stak-linux-2.10.4-cpu.tar.xz && tar xf xmr-stak-linux-2.10.4-cpu.tar.xz && cd xmr-stak-linux-2.10.4 && 
sudo ./xmr-stak xmr-stak --noAMD --noNVIDIA -c config.txt -C pools.txt -o pool.ryo-currency.com:3333 -u RYoLscs6XtfJ88U6EvLRXvg3duENLvQkhUnKHAqjbsN2PWnQPXX2qGHHXtQsVmSUQXgUifvSYB6TWe5ndvwMM1x8K4SuQk8aKyy -r myworker -p x --currency ryo