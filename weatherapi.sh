echo $1
name=$1
echo $name
#!/bin/bash
curl -s "http://api.openweathermap.org/data/2.5/weather?q=Minneapolis,us&units=imperial&APPID=e7bfeb750ae444f9e21a02fdc668e776"
