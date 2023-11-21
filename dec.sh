#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Usage: $0 <file>"
    exit 1
fi
openssl enc -d -aes-256-cbc -pbkdf2 -in $1 | tar -xz

