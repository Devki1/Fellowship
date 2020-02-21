#!/bin/bash -x
random=$(( RANDOM % 2 ))
if(( $random == 0))
then
    echo head
else
    echo tail
fi
