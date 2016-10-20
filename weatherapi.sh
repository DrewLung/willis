read weatherapi_key <<< $(cat weatherapi_key)
echo $weatherapi_key
set -x
curl http://api.openweathermap.org/data/2.5/weatherq=Minneapolis7,us&units=imperial&APPID=$weatherapi_key


#while [1..10]
#do echo "curl"
#done
