#! /bin/bash
cd ~/CuttingRoom

echo "Welcome to magicut, a video trimming program."

echo "Please enter the name of the video you would like to edit."
read magicut_input

echo "Please enter the starting time stamp. (e.g. 00:00:00.00)"
read start_time

echo "Please enter the ending time stamp. (e.g. 00:00:00.00)"
read ending_time

ffmpeg -i $magicut_input -ss $start_time -to $ending_time -c:v copy -c:a copy magicut.mp4

