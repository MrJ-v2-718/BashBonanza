#! /bin/bash
cd ~/CuttingRoom

echo "Welcome to stitch, a video joining program."

echo "Please place the desired files into the StitchBox"

cd ~/CuttingRoom/StitchBox

for f in *.mp4; do echo "file '$f'" >> stitch_list.txt; done

ffmpeg -f concat -i stitch_list.txt -c copy stitched.mp4

rm stitch_list.txt

