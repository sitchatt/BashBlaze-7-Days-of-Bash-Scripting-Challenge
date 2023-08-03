#!/bin/bash
echo "#####################################################"
echo "                                                        "
## BashBlazeThis is the Day-1 for BashBlaze
echo "I'm very excited to take this challenge forward"

echo "    "
echo "#####################################################"
# Declaring variables
my_interest="Cloud & DevOps"
joiner="with our"
love="TWS community"

# Create a new variable by combining the above variables
fun="$my_interest $joiner $love"

echo "######################################"

echo "$fun is really fun"

echo "######################################"

# Using built-in variables

echo "#######################################"

echo "Hello, '$USER'! You logged into '$HOSTNAME' " 
echo "Your home directory is:$HOME"
echo "Current Directory: $PWD"
echo "#"
echo "#"
if [ "$EUID" -eq 0 ]; then
    echo "Script is run by root."
else
	echo "Script is run by regular user,non-root"
fi
#
#
# More system variables

echo "    "
echo "######################################"

UP=$(uptime | xargs | awk '{print $3,$4}')


echo "Today's date is: $(date)"
echo "Uptime Hour: $UP"
echo "Current kernel version is: '$(uname -r)'"
echo "OS details are:  $(hostnamectl)"

# Using wildcards
echo "#####################################################"

current_directory=$(pwd)
echo "$current_directory contains below files with .txt extension:"
echo ""


ls -l *.txt


echo "#############################################"

echo "Thanks for completing Day-1"

