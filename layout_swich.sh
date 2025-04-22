#!/bin/bash
export L=$(setxkbmap -query | grep "layout" | awk '{print $2}') 
if [ "$L" = "us" ]; then 
   setxkbmap -layout ru
elif [ "$L" = "ru" ]; then
   setxkbmap -layout us
fi
