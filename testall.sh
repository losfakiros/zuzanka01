#!/usr/bin/env bash

# tu je cesta na program
PROG=C:\Users\Radko\CLionProjects\zuzanka01\cmake-build-debug


for IN_FILE in tests/in_*.txt; do
    REF_FILE=`echo -n $IN_FILE | sed -e 's/in_\(.*\)$/out_\1/'`
    $PROG < $IN_FILE > my_out.txt
    if ! diff $REF_FILE my_out.txt ; then
        echo "chyba: $IN_FILE";
        exit
    else
        echo "OK: $IN_FILE";
    fi
done