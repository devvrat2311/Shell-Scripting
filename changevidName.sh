#!/bin/bash

for file in *mkv; do
	episode_number=$(echo "$file" | grep -oP '\d+(?=\.)')
	echo "File: $file, Episode Number: $episode_number"

	if [[ $episode_number =~ ^[0-9]+$ ]]; then 
		new_file_name="Episode_$episode_number.mkv"
		mv "$file" "$new_file_name"
		echo "Renamed $file to $new_file_name"

	else
		echo "Couldn't extract episode number from "

	fi
done
