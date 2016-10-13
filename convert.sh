function CtoF {
  echo "CtoF $1"
  echo "9*$1/5+32" | bc -l 
}

function FtoC {
  echo "FtoC $1"
}

read -p "What temp would you like to convert? " temp
read -p "Convert CtoF or FtoC? " convert

if [ $convert == "CtoF" ] ; then CtoF $temp
elif [ $convert == "FtoC" ] ; then FtoC $temp
else echo "$convert is not valid" 
fi


