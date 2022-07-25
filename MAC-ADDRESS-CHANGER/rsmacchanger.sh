#!/bin/bash
echo -ne '                   \033[0;35m\r'
echo Title		: rkmacchanger
echo Description	: This Tool Is USed For Chamge MAC Address 
echo Author		: RITIK SLATHIA

echo VERSION		: 1.0    

echo Usage		: ./rkmacchanger.sh

div======================================================
sleep 3
echo
echo
echo -n "DATE&TIME: "
date "+%a %d %b %Y %Z %H:%M:%S"


echo ==============================================================================
echo
echo
div=======================================

echo -ne '                   \033[0;33m  \r'

echo Author RITIK SLATHIA
echo 
echo

sleep 1
sleep 2
echo -ne '                   \033[1;37m  □□□□□□□□□□0% \r'
sleep 0.1
echo -ne '                   \033[1;31m  ■□□□□□□□□□10% \r'
sleep 0.1
echo -ne '                   \033[1;31m  ■■□□□□□□□□20% \r'
sleep 0.1
echo -ne '                   \033[1;33m  ■■■□□□□□□□30% \r'
sleep 0.1
echo -ne '                   \033[1;33m  ■■■■□□□□□□40% \r'
sleep 0.1
echo -ne '                   \033[1;33m  ■■■■■□□□□□50% \r'
sleep 0.1
echo -ne '                   \033[1;36m  ■■■■■■□□□□60% \r'
sleep 0.1
echo -ne '                   \033[1;36m  ■■■■■■■□□□70% \r'
sleep 0.1
echo -ne '                   \033[1;36m  ■■■■■■■■□□80% \r'
sleep 0.1
echo -ne '                   \033[1;32m  ■■■■■■■■■□90% \r'
sleep 0.1
echo -ne '                   \033[1;32m  ■■■■■■■■■■100% \r'
echo
echo ...
echo ......
echo .........
echo ............
echo
echo
echo Show Intefaces = 
ip addr
echo
echo
echo
echo ...
echo ......
echo .........
echo ............
echo
echo
echo
echo
echo Enter Interface Name You Want to Change
read -p "Interface = " interface
echo
echo
manufacturer=$(shuf -n 1 vendors.txt | awk '{print$3} ')
modle=$(printf '%02x:%02x:%02x' $[RANDOM%256] $[RANDOM%256] $[RANDOM%256])

ifconfig $interface down
ifconfig $interface hw ether $manufacturer:$modle
ifconfig $interface up

sleep 2
echo -ne '                   \033[1;37m  □□□□□□□□□□0% \r'
sleep 0.1
echo -ne '                   \033[1;31m  ■□□□□□□□□□10% \r'
sleep 0.1
echo -ne '                   \033[1;31m  ■■□□□□□□□□20% \r'
sleep 0.1
echo -ne '                   \033[1;33m  ■■■□□□□□□□30% \r'
sleep 0.1
echo -ne '                   \033[1;33m  ■■■■□□□□□□40% \r'
sleep 0.1
echo -ne '                   \033[1;33m  ■■■■■□□□□□50% \r'
sleep 0.1
echo -ne '                   \033[1;36m  ■■■■■■□□□□60% \r'
sleep 0.1
echo -ne '                   \033[1;36m  ■■■■■■■□□□70% \r'
sleep 0.1
echo -ne '                   \033[1;36m  ■■■■■■■■□□80% \r'
sleep 0.1
echo -ne '                   \033[1;32m  ■■■■■■■■■□90% \r'
sleep 0.1
echo -ne '                   \033[1;34m  ■■■■■■■■■■100% \r'
sleep 0.1
sleep 0.5
echo
echo ...
echo ......
echo .........
echo ............
echo
echo
echo Your New Changed Mac-Address is :-
ifconfig $interface
