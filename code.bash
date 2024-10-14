#!/bin/bash

:<< 'logic'
    // to binarize
    int n = scan();
    int nn = n;
    String strv = "";
    while (nn>0){
        strv.append(nn%2)
        n//=2;
    }



    for (int i = 0; i < len(strv); i++) {
        str.append(strv[i])
    }

    // to split by .
    string addr = scan();


logic

if [ -z $1 ]
then
    echo "put IPv4 address"
else

addr=$@

#len=${#addr}
#echo "input: $addr, its length is $len"

    # whoah! the split function from python????????
IFS='.' read -r -a arr <<< "$addr"

    # some random noncense function to make octets binary...
D2B=({0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1})

    #okay, now we rollin'
echo ${D2B[${arr[0]}]}.${D2B[${arr[1]}]}.${D2B[${arr[2]}]}.${D2B[${arr[3]}]}
fi
