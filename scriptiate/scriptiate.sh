#!/bin/bash
filename=${1:?"missing"}
set -C
#if ls $filename
#then
#    echo "$filename already exists \!"
#    exit 2
#fi

if read line
then
    echo $line > $filename
    while read line
    do 
        echo $line >> $filename
    done
    chmod u+x $filename
    exit 0
else
    echo '#!/bin/bash' > $filename
    chmod u+x $filename
    vim $filename
fi
