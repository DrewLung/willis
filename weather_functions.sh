#the following will sum all the values of the temp_array and put them in a variable called 'sum'
declare -a temp_array

function average {
  echo "$sum/${#temp_array[*]}" | bc 
}

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
