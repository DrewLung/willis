#the following will sum all the values of the temp_array and put them in a variable called 'sum'

function average {
  echo average=$(echo "scale=0 ; $sum/${#temp_array[*]}" | bc) 
}

function round {
  printf "%.*f\n" 0 $1
}

function maxmin {
  max=$(round ${temp_array[0]})
  min=$(round ${temp_array[0]})
  for n in "${temp_array[@]}" ; do
      if [ $(round $n) -gt $(round $max) ] ; then
          max=$n
      fi
  done
  for i in "${temp_array[@]}" ; do
      if [ $(round $i) -lt $(round $min) ] ; then
          min=$i
      fi
  done
echo min=$min
echo max=$max
}

declare -a temp_array
for temp in $(cat ~/tmp/weather_data.csv | awk -F',' '{ print $2 }'); do 
  temp_array=("${temp_array[@]}" $temp)
done
 
samples=$((${#temp_array[@]}-1))
sum=0
for temp in $(seq 0 $samples); do 
  sum=$(echo "$sum + ${temp_array[$temp]}"|bc)
done

echo " Computer Programming Fundamentals "
echo $sum
echo "first date = $(head -n 1 ~/tmp/weather_data.csv | awk -F',' '{ print $1 }')"
echo "last date = $(tail -n 1 ~/tmp/weather_data.csv | awk -F',' '{ print $1 }')"
average

maxmin
