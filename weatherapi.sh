read date temp humidity <<< $(cat /tmp/weather.json | jq '.dt,.main.temp,.main.humidity')

read weatherapi_key <<< $(cat weatherapi_key)

echo $weatherapi_key
set -x
curl "http://api.openweathermap.org/data/2.5/weather?q=Minneapolis7,us&units=imperial&APPID=$weatherapi_key"

#while [1..10]
#do echo "curl"
#done
