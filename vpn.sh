#!/bin/bash
if [ -n "$VPN_PATH" ] 
then
IFS=$'\n'
v=0
files=($(ls "$VPN_PATH"))
for l in "${files[@]}" 
do
   echo "$v) $l"
   ((v++))
done 
read -p "choose one:" index
if [ $index -ge 0 ] && [ "$index" -lt "${#files[@]}" ]
then
config=$(echo ${files[$index]})
      echo "connecting to ('$config')"
      sudo openvpn "$VPN_PATH/$config"
   else 
      echo "wrong index"
fi
   else 
   echo "set VPN_PATH constant"
fi 
