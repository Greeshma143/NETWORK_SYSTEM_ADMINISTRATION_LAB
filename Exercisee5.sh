#1) Write a shell script that takes a command line argument and reports on
  whether it is directory, a file, or something else.
                          if [ -f $1 ]
                          then
                            echo "It is a file"
                          elif [ -d $1 ]
                          then
                            echo "It is directory"
                          else
                            echo "Something else"
                          fi

#2) Write a shell script that computes the gross salary of a employee according
    to the following rules :
    i) if basic salary is < 1500 then HRA =10% of the basic and DA =90% of the basic.
    ii) If basic salary is >=1500 then HRA =Rs500 and DA=98% of the basic.
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

#3) Write a shell script that accepts two integers as its arguments and
    computes the value of first number raised to the power of the second
    number.
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

#44) Write a shell script which receives two file names as arguments. It should
    check whether the two file contents are same or not. If they are same thenn
    second file should be deleted.
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

#5) Write a shell script for Calculator
                          echo "Enter Two numbers : "
                          read a
                          read b
                          echo "Enter Choice :"
                          echo "1. Addition"
                          echo "2. Subtraction"
                          echo "3. Multiplication"
                          echo "4. Division"
                          read ch
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
