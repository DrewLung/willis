#read temp humidity <<< $(cat weather.sample.json | jq '.main.temp,.main.humidity')

#echo $temp $humidity

#read weatherapi_key <<< $(cat weatherapi_key)

#echo $weatherapi_key
#set -x
#curl "http://api.openweathermap.org/data/2.5/weather?q=Minneapolis7,us&units=imperial&APPID=$weatherapi_key"

#while [1..10]
#do echo "curl"
#done

#!/bin/bash
days=$1
file_op=$2

read -p "How many days of samples: "               days
read -p "N) New sample or A) Append to previous: " file_op

if [ "$file_op" == "N" ]; then rm -f ~/tmp/weather_data.csv; fi
read samples <<< $(($days*24))
read weatherapi_key <<< $(cat weatherapi_key)

for i in $(seq 1 $samples); do

  read epoch temp humidity <<< \
    $(curl -s "http://api.openweathermap.org/data/2.5/weather?q=Minneapolis,us&units=imperial&APPID=$weatherapi_key" | \
    jq '.dt,.main.temp,.main.humidity')

  if [ $epoch -gt 1477570797 ]; then
    read datetime <<<$(date -d @$epoch +'%m/%d/%Y %H:%M')
    echo "$datetime temp=$temp humidity=$humidity"
    echo $datetime,$temp,$humidity >> ~/tmp/weather_date.csv
  else 
    echo "$(date +'%m/%d/%Y %H:%M') bad sample"
  fi

  sleep 1800
done

#read date temp humidity <<< $(cat weather.json  | jq '.dt,.main.temp,.main.humidity')
#read windspeed winddirection <<< $(cat /tmp/weather.json | jq '.wind.speed','.wind.deg')
