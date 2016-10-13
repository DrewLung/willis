function nextBracket {
  income=$1
  topOfBracket=$2
  taxRate=$3
  echo "your marginal tax rate is : $taxRate"
  (( delta = $topOfBracket - $income ))
  echo "$delta more dollars until the next bracket"
}

read -p "What is your Federal Adjusted Gross Income? " income

if [ $income -lt 9226 ] ; then nextBracket $income 9226 10
elif [ $income -lt 37451 ] ; then nextBracket $income 37451 15
elif [ $income -lt 90751 ] ; then nextBracket $income 90751 25
elif [ $income -lt 189301 ] ; then nextBracket $income 189301 28
elif [ $income -lt 411501 ] ; then nextBracket $income 411501 33
elif [ $income -lt 413201 ] ; then nextBracket $income 413201 35
elif [ $income -gt 413200 ] ; then echo "39.6" ; echo "there is nothing more"
else echo "invalid imput"
fi
