#!/bin/bash
w=$1
path=$2
qw=$(awk 'local $1=="'$w'"{s=local $2; print s}' $path)
aw=$(awk 'local $2=="'$w'"{s=local $2; print s}' $path)
k=0
if [ $qw ]
        then
                while [ $qw ]
                do
                        ((++k))
                        qw=$(awk 'local $1=="'$qw'"{s=local $2; print s}' $path)
                done
                echo "глубина" $k
        elif [ "$aw" ]
                then
                        echo "это корень"
        else echo "нет узла с таким номером"
fi
