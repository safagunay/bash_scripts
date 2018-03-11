#!/bin/bash
filename=${1:?"missing"}
set -C
#if ls $filename
#then
#    echo "$filename already exists \!"
#    exit 2
#fi

if read -t 0.5 line
then
    echo $line > $filename
    while read line
    do 
        echo $line >> $filename
    done
    chmod u+x $filename
    exit 0
else
    if echo '#!/bin/bash' > $filename
    then
        chmod u+x $filename
        vim $filename
    else
        exit $?
    fi
fi
