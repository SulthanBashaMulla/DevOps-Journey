#!/bin/bash

################################################################
#Author: Sulthan
#Date: 28-07-2027
#Purpose: This script will help to find the running processes inside your system, But now i have done to find the specific python based processes running inside your system
################################################################


#cmd to find the processes in short log manner

echo "processes running inside your system in short log  formate "

ps


#cmd for the processes  in a long context fromate

echo "processes running inside your system in long contex formate"


ps -ef


#cmd for filtering out the specific process named in your system  ex:- python using pipe | grep

ps -ef | grep "python3"




#cmd for identifying the process  id of the specific process (only print the process id of the python proceses running inside the system

echo "process id of the python processes"

ps -ef | grep "python3" | awk -F" " '{print $2}'

#cmd for ptinting the specific usernames of the user who stated the process of python

echo "username of the user who started the python processes"

ps -ef | grep "python3" | awk -F" " '{print $1}'

