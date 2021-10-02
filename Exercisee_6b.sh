echo ".........OS VERSION,RELEASE NUMBER AND KERNAL VERSION ARE....."
cat /etc/os-release |head -n 2
uname -r
echo ".......ALL AVAILABLE SHELLS......."
cat /etc/shells
echo ".......FILE SYSTEM (MOUNTED)......"
findmnt -l
