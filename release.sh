#!/usr/bin/env bash


if [ -z "$1" ]; then
    echo "Usage: $0 version"
    exit 1
fi

# Ask for confirmation
read -p "Are you sure you want to release $1? (y/n) " response

# Check the user's response
if [ "$response" = "y" ] || [ "$response" = "Y" ]; then
        echo "Releaseing"
        ls -1 ./*.enc
        gh release create $1 ./*.enc
else
    echo "Release canceled."
fi


