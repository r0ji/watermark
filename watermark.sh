#!/bin/bash

# Set default values
text="Watermark"
pointsize=65
angle=30
extension="pdf"
prefix="watermarked"

# Parse command line arguments
while getopts ":t:p:a:e:f:" opt; do
  case $opt in
    t) text="$OPTARG";;
    p) pointsize="$OPTARG";;
    a) angle="$OPTARG";;
    e) extension="$OPTARG";;
    f) prefix="$OPTARG";;
    \?) echo "Invalid option -$OPTARG" >&2; exit 1;;
  esac
done

# Shift the command line arguments so that the first argument is the extension
shift $((OPTIND - 1))

# Get the number of files with the specified extension in the current directory
num_files=$(ls *.$extension 2>/dev/null | wc -l)

# Display a message indicating how many files will be processed
printf "Processing %d files with extension '%s'...\n" "$num_files" "$extension"

# Apply watermark to all files with the specified extension in the current directory
for file in *.$extension; do
  convert -density 120 "$file" -background none -fill "rgba(128,128,128,0.3)" -pointsize "$pointsize" -gravity north -draw "translate 0,72 rotate -$angle translate -150,150 text 0,0 '$text'" -gravity south -draw "translate 0,72 rotate -$angle translate -120,200 text 0,0 '$text'" "${prefix}_$file"
  echo "Watermark applied to $file"
done

echo "Process complete."
