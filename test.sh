#!/bin/bash

echo "-----------------------------#1"
#1) (3 points ) Microsft is awesome! True or False? Add a command line parameter to the script
# with which a user running the script can input their answer.  Output the value
# of this parameter to the screen with the format:
# Microsoft is awesome=<your answer>  
# Hint: Don't make this too hard.  Just create a command line parameter and echo the result as above.
myanswer=true
echo "Microsoft is awesome= $myanswer"
#1B) (1 point) Now show the command you would use to run this script with your answer to this question:
#./test.sh
echo "-----------------------------#2"
#2) (2 points ) Prompt the user running the script for the value of an additional input parameter. 
# The prompt should say "enter a comfortable outdoor temperature." Call the vairable 'comfy_temp'.  
# Output their answer to the screen in the format: "Comfy Temp=<the answer>"
#BTW once you have a solution for this problem then use file input redirection to answer this question:
# echo 70 > comfytemp.txt
#./test.sh < comfytemp.txt
read -p "enter a comfortable outdoor temperature." comfy_temp
echo "Comfy Temp= $comfy_temp"
echo 75 > comfytemp.txt
./test.sh < comfytemp.txt
echo "-----------------------------#3"
#3) (5 points ) Construct if then else logic that will test $comfy_temp your YOUR personal outdoor 
# temperature comfort range.  Indicate if $comfy_temp is 'too cold,' or 'too hot' or 'just right' 
# for you personally. Output that answer to the screen.  Think Goldie Locks here and use Fahrenheit:)

echo "-----------------------------#4"
#4) (5 points) Construct a 'for' loop that begins at the lowest temp in your outdoor temperature comfort range
# and ends at the highest temp. Inside this 'for' loop convert each number (or temperature) from 
# Fahrenheit to Celsius with this formula and echo the results to the screen:
# echo $(echo "scale=2;(5/9)*($F -32)"|bc)
# Note that you replace $F with your loop variable

echo "-----------------------------#5"
#5) (5 points) Now do the very same thing except call a function from the for loop
# to convert Fahrenheit to Celsius. define the function below and put the 
# for loop to call it after that.  

echo "-----------------------------#6"
#6) (3 points) Construct an array with the range of your comfortable outdoor temperatures.  
# Call it 'mytemprange and echo the entire contents out to the screen - Hint: that should 
# be done with a single echo statement.

echo "-----------------------------#7"
#7) (4 points) Calculate the sum of all the numbers in mytemprange and echo it to the screen with 
# the format: "Sum of mytemprange=<sum of numbers in mytemprange>". Hint: use the array from the previous
# quesiton.  

echo "-----------------------------#8"
#8) (3 points) Now calculate the average of that temperature range and output it to the scree with the 
# format: "Average of mytemprange=<average of numbers in mytemprange>". Hint: use the sum from the previous
# question.  

echo "-----------------------------#9"
#9) (4 points) From the weather.sample.json file, use jq to pull out the time of 'sunset' and output it
# to the screen in the format: "sunset epoch time: <epoch time from file>"  
# Note: it is in epoch time format

echo "-----------------------------#10"
#10) (5 points) Now convert that time to a time format we all can understand and use file 
# redirection to put the converted date/time in a file called ~/tmp/sunset.txt.

#10B (1 point) Now display the contents of ~/tmp/sunset.txt to the screen

echo "-----------------------------#11"
#11) (3 points) Be sure you have moved this file to your git repo and push it to git

#you're done!
