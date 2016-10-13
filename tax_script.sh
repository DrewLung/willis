function nextBracket {
  echo "nextBracket"
}

read -p "What is your Federal Adjusted Gross Income? " income

if [ $income -lt 9226 ] ; then echo "10" ; nextBracket #15percent $income
elif [ $income -lt 37451 ] ; then echo "15" ; nextBracket #25percent $income
elif [ $income -lt 90751 ] ; then echo "25" ; nextBracket #28percent $income
elif [ $income -lt 189301 ] ; then echo "28" ; nextBracket #33percent $income
elif [ $income -lt 411501 ] ; then echo "33" ; nextBracket #35percent $income
elif [ $income -lt 413201 ] ; then echo "35" ; nextBracket #39.6percent $income
elif [ $income -gt 413200 ] ; then echo "39.6"
else echo "invalid imput"
fi
