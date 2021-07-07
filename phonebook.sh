#!/bin/bash

PHONEBOOK_ENTRIES=bash_phonebook_entries
touch $PHONEBOOK_ENTRIES
if [ "$#" -lt 1 ]; then
    exit 1

elif [ "$1" = "new" ]; then
    # YOUR CODE HERE #
    temp="2"
    while [ $temp -le "$#" ]
    do 
    	echo -n ${!temp} >> $PHONEBOOK_ENTRIES
    	echo -n " " >> $PHONEBOOK_ENTRIES
    	temp=$[$temp+1]
    done
    echo >> $PHONEBOOK_ENTRIES
elif [ "$1" = "list" ]; then
    if [ ! -e $PHONEBOOK_ENTRIES ] || [ ! -s $PHONEBOOK_ENTRIES ]; then
        echo "phonebook is empty"
    else
        # YOUR CODE HERE #
        cat $PHONEBOOK_ENTRIES
    fi

elif [ "$1" = "lookup" ]; then
    # YOUR CODE HERE #
    grep "$2" $PHONEBOOK_ENTRIES | cut -d " " -f 3

elif [ "$1" = "remove" ]; then
    # YOUR CODE HERE #
    grep "$2" $PHONEBOOK_ENTRIES

elif [ "$1" = "clear" ]; then
    # YOUR CODE HERE #
    echo -n > $PHONEBOOK_ENTRIES
else
     # YOUR CODE HERE #
     exit 1
fi
