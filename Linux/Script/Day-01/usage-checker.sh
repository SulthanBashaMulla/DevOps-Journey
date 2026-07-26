#!/bin/bash

#space usage checker script works on linux or ubuntu


#1.check memory space 

echo "Memory usage of your system RAM"

free

#check memory space without large numbers

free -g

#2.check cpu usage

echo "CPU Usage of your system"

nproc

#3.check disk usage 
echo "DISK usgae of your system"

df -h


#4.check overall combined space usage of mem, cpu, disk
echo "Overall usage of your system"

echo "press ctrl + c to exit from the running cmd"


top
