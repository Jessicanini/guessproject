while [ 1 -gt 0 ]
do
  echo -e "how many files are in the current directory, please enter a number "
  read num
  if [ $num -gt $(ls -l |grep "^-"|wc -l) ]
  then 
    echo "your number is larger"
  elif [ $num -lt $(ls -l |grep "^-"|wc -l) ]
  then
    echo "your number is smaller"
  else
    echo "congratulations" 
    break
  fi
done

