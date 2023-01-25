#!/bin/bash

if [ -z "$1" ]; then
  let min=25 
else
  let min=$1
fi
echo "Waiting ${min} minutes"

for i in $(seq 1 $min)
do
  sleep 60  
  let rem=min-i
  echo -ne "${rem} minutes remaining\\r"
done
echo ""

notification="Termino el tiempo de trabajo."
voice="end of working, please take a short break"
echo $notification
espeak-ng -p 30 "$voice"
notify-send -t 10000 'POMODORO' "$notification"




