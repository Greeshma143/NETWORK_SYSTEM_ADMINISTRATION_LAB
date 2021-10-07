echo "CURRENTLY LOGGED USER & LOG IN NAME"
who
whoami
echo "----------------------"
echo "CURRENT SHELL"
echo $SHELL
echo "----------------------"
echo "HOME DIRECTORY"
echo $HOME
echo "----------------------"
echo "OPERATING SYSTEM TYPE"
cat /etc/os-release | head -n 1
echo "----------------------"
echo "CURRENT WORKING DIRECTORY"
pwd 
