#!/bin/bash

read -p "Enter the path where you want to copy the .bashrc file: " target_path

target_path=$(eval echo "$target_path")

mkdir -p "$target_path"

if [ $? -ne 0 ]; then
    echo "Error: Could not create directory $target_path"
    echo "Press any key to exit..."
    read -n 1
    exit 1
fi

cp ~/.bashrc "$target_path/.backup"

if [ $? -eq 0 ]; then
    echo "The .bashrc file was successfully copied to $target_path/.backup"
else
    echo "Error: Could not copy the file"
fi

echo "Press any key to exit..."
    read -n 1
