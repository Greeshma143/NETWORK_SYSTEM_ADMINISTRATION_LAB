cat > myfile
1001	RAM	97
1025	ARUN	86
1013	RAJU	93


cat myfile
1001	RAM	97
1025	ARUN	86
1013	RAJU	93

cut -f1,3 myfile > cat && cut -f2 myfile | paste cat -;

cat myfile | head -n 2

cat myfile | head -n 3 | tail -1

cat myfile | awk '{print $2 }'

cat myfile | awk '{print $2 }'| wc