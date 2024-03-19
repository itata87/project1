#!/bin/bash

file_path="/home/ec2-user/fruits"

if [ -e "$file_path" ]; then
    echo "File '$file_path' already exists. Exiting."
    exit 1
fi

fruits=("Apple" "Banana" "Orange" "Grape" "Strawberry" "Pineapple" "Mango" "Watermelon" "Kiwi" "Peach")

create_fruits_file() {
    echo "Creating file '$file_path' and populating with fruits..."
    for fruit in "${fruits[@]}"; do
        echo "$fruit" >> "$file_path"
    done
    echo "Fruits file created and populated successfully."
}

main() {
    create_fruits_file
}

main
