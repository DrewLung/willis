#read -p "What is your first number? "
#read -p "What is your second number? "
#read -p "What is your third number? "

#function average {
  #echo average=$( echo "scale=0 ; '$1+$2+$3'/3" | bc)
#}

#average

sum=0
numbers=0
read -p $'Enter a set of numbers:\n' b
for j in $b; do
  [[ $j =~ ^[0-9]+$ ]] || { echo "$j is not a number" >&2 && exit 1; } 
  ((numbers+=1)) && ((sum+=j))
done

((numbers==0)) && avg=0 || avg=$(echo "$sum / $numbers" | bc -l)
echo "Sum of inputs = $sum"
echo "Number of inputs = $numbers"
printf "Average input = %.2f\n" $avg                               
