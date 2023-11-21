#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

openssl enc -aes-256-cbc -salt -pbkdf2 -pass file:$PWD/.pass -in $1 -out $1.enc
