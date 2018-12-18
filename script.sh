#! /bin/bash
# This script will clear the terminal, display a greeting,
# show who is connected and open applications in linux.
# after downloading file make file executable by running command
# chmod +x script.sh then execute file by running sudo ./script.sh

#clears terminal window
clear

echo "The script starts now."

# dollar sing is used to get conent of variable
echo "Hi, $User!"
echo

echo "I will now fetch you a list of connected users:"
echo
#show who is logged on
w
#show what stats
echo

#open spotify
echo "opening spotify:"
spotify > /dev/null 2>&1 &
echo

#open slack
echo "opening slack:"
slack > /dev/null 2>&1 &

#open firefox
echo "opening firefox:"
firefox > /dev/null 2>&1&
echo
