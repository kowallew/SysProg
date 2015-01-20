#!/bin/bash
dr=$1
lf=$2

for ftm in `ls $dr`
do 
        if [ -f "$dr/$ftm" ];
        then
                login=(`stat -c %U "$dr/$ftm"`) 
                home=`eval echo ~$login`
                if [ -f "$home/$rtm" ]
                then
                        echo "$ftm already exists in directory $home" >> $lf
                else    
                        mv "$dr/$ftm" "$home"
                        echo "$ftm move to  directory $home" >> $lf
                fi;
        fi;
done;
