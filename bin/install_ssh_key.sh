#!/bin/sh
echo "$(date) Start run_command.sh ..." 

for X in `cat ./servers.txt`;
do
   echo "$(date) $X: ssh-copy-id $X " 
   ssh-copy-id $X
done

echo "$(date) Completed!" 
