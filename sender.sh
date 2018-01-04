#!/bin/bash
#POWERED BY GURULUCKNUT x AngleDarknet

function ngesend(){
	local STARTTIME=$(date +%s)
	local send=$(php -f gaskeun.php $1)
	local ENDTIME=$(date +%s)
	if [[ $send =~ "SUKSES" ]]; then
		printf "${2} .${1} => SUKSES [$[${ENDTIME} - ${STARTTIME}] Sec]\n"
	else
		printf "${2} .${1} => GAGAL GOBLOK [$[${ENDTIME} - ${STARTTIME}] Sec]\n"
	fi
}

if [[ -z $1 ]]; then
	printf "To Use $0 <mailist.txt> \n"
	exit 1
fi

printf "\npowered BY:    ▄▄▄▄                                
  ██▀▀▀▀█                               
 ██        ██    ██   ██▄████  ██    ██ 
 ██  ▄▄▄▄  ██    ██   ██▀      ██    ██ 
 ██  ▀▀██  ██    ██   ██       ██    ██ 
  ██▄▄▄██  ██▄▄▄███   ██       ██▄▄▄███ 
    ▀▀▀▀    ▀▀▀▀ ▀▀   ▀▀        ▀▀▀▀ ▀▀
     ▄▄▄▄   ▄▄                     ██     ▄▄       
  ██▀▀▀▀█  ██                     ▀▀     ██       
 ██        ██▄████▄   ▄████▄    ████     ██▄███▄  
 ██  ▄▄▄▄  ██▀   ██  ██▀  ▀██     ██     ██▀  ▀██ 
 ██  ▀▀██  ██    ██  ██    ██     ██     ██    ██ 
  ██▄▄▄██  ██    ██  ▀██▄▄██▀  ▄▄▄██▄▄▄  ███▄▄██▀ 
    ▀▀▀▀   ▀▀    ▀▀    ▀▀▀▀    ▀▀▀▀▀▀▀▀  ▀▀ ▀▀▀   
                                                \n"

# OPTIONAL
persend=5 #Email Send PerSleep
setleep=25 #Delay Send PerSend

IFS=$'\r\n' GLOBIGNORE='*' command eval 'mailist=($(cat $1))'
STARTTIME=$(date +%s)
itung=0
for (( i = 0; i < "${#mailist[@]}"; i++ )); do
username="${mailist[$i]}"
set_kirik=$(expr $itung % $persend)
        if [[ $set_kirik == 0 && $itung > 0 ]]; then
                sleep $setleep
        fi
        ngesend $username $itung &
        itung=$[$itung+1]
done
ENDTIME=$(date +%s)
wait
printf "\n It takes $[${ENDTIME} - ${STARTTIME}] seconds To Sent ${itung} Email\n"