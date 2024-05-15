#!/usr/bin/env bash

BASE_CPU=4
BASE_MEM=8

checks() {
    if ! [ $(id -u) = 0 ]; then
        echo ""
        echo "Run me as a root!"
        echo ""
        exit 1
    fi
}

adjustment() {
    echo ""
    read -p "Would you like to adjust memory and cores? (y/n) " ADJ
    echo ""
    if [[ "$ADJ" == y ]]; then
        echo ""
        read -p "How much cores? " CPU
        echo ""
        read -p "How much memory? " MEM
        echo ""
    elif [[ "$ADJ" == n ]]; then
        echo ""
    else
        echo "Only y or n can be used here!"
        exit 1
    fi
}


execution() {
    if [[ "$ADJ" == y ]]; then
        echo ""
        echo "We will use $CPU cores and $MEM GB."
        docker build -t ftbe  -c $CPU -m $MEM . 
        docker run -t -i ftbe -c $CPU -m $MEM
    elif [[ "$ADJ" == n ]]; then
        echo ""
        echo "We will use $BASE_CPU cores and $BASE_MEM GB."
        docker build -t ftbe  -c $BASE_CPU -m $BASE_MEM . 
        docker run -t -i ftbe -c $BASE_CPU -m $BASE_MEM
    else
        echo "Only y or n can be used here!"
        exit 1
    fi
}

checks
adjustment
execution