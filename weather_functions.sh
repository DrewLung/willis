#the following will sum all the values of the temp_array and put them in a variable called 'sum'

function average {
  echo average=$(echo "scale=0 ; $sum/${#temp_array[*]}" | bc) 
}

function round {
  printf "%.*f\n" 0 $1
}

function maxmin {
  #max=${temp_array[0]}
#for n in "${temp_array[@]}" ; do
    #((n > max)) && max=$n
#done
#echo $max
  max=$(round ${temp_array[0]})
  max=${temp_array[@]}
  for n in "${temp_array[@]}" ; do
      if [ "$n" -gt "$max" ] ; then
          max="$n"
      fi
  done
echo $max
  #min=$max
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

echo $sum

average

maxmin
