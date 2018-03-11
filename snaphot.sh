#!/bin/bash
a=$(echo "time and date : `date`")
b=$(echo `uptime -p`)
c=$(echo "logged users : `who`")
echo $a $'\n' $b $'\n' $c > /var/log/"snapshot.`date`"
echo $a $'\n' $b $'\n' $c
