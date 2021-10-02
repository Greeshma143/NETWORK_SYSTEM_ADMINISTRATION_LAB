#1
if [ -f $1 ]
then
  echo "It is a file"
elif [ -d $1 ]
then
  echo "It is directory"
else
  echo "Something else"
fi

#2
echo "enter the basic salary:"
read bsal
if [ $bsal -lt 1500 ]
then
gsal=$((bsal+((bsal/100)*10)+(bsal/100)*90))
echo "The gross salary : $gsal"
fi
if [ $bsal -ge 1500 ]
then
gsal=$(((bsal+500)+(bsal/100)*98))
echo "the gross salary : $gsal"
fi

#3
echo  "First number : ";
read no1;
echo "";
echo  "Second number : ";
read no2;
echo "";
echo "$no1 ^ $no2 is : $(($no1 ** $no2))";
echo  "First number : ";
read no1;
echo "";
echo  "Second number : ";
read no2;
echo "";
echo "$no1 ^ $no2 is : $(($no1 ** $no2))";

#4
echo "Enter first filename"
read f1
echo "Enter second file name"
read f2
if ( diff $f1 $f2 )
then
        rm $f2
        echo "files are same so second file deleted"
else
        echo "files are not same"
fi

#5
echo "Enter Two numbers : "
read a
read b
 
# Input type of operation
echo "Enter Choice :"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch
 
# Switch Case to perform
# calculator operations
case $ch in
  1)res=`echo $a + $b | bc`
  ;;
  2)res=`echo $a - $b | bc`
  ;;
  3)res=`echo $a \* $b | bc`
  ;;
  4)res=`echo "scale=2; $a / $b" | bc`
  ;;
esac
echo "Result : $res"
