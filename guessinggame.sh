#!/usr/bin/enc bash
clear
value=$(ls -la |grep '^-' |wc -l)
function guess
{
read input
if [[ $input -eq $value ]]
  then
    echo It is correct, Conguratulation!
 for file_name in (ls)
    do
      echo $file_name
    done
else
    if [[ $input -gt $value ]]
    then
      echo It is high, try again!
      guess
    else
      echo It is low, try again!
    fi
fi
}
echo How many files are in the current directory?
guess
