#!/bin/bash

# Set default values
text="Watermark"
pointsize=65
angle=30
extension="pdf"
directory="output"
density=200

# Parse command line arguments
while getopts ":t:p:a:e:o:d:h" opt; do
  case $opt in
    t) text="$OPTARG";;
    p) pointsize="$OPTARG";;
    a) angle="$OPTARG";;
    e) extension="$OPTARG";;
    o) directory="$OPTARG";;
    d) density="$OPTARG";;
    h) echo "Usage: watermark [options] extension

Apply watermark to all files with the specified extension in the current directory.

Options:
-t <text>      Watermark text (default: Watermark)
-p <size>      Point size of the watermark text (default: 65)
-a <angle>     Angle of rotation of the watermark text (default: 30)
-o <directory> Output directory name (default: output)
-d <density>   Pixel density (default: 200)
-h             Show this help message" 
       exit 0;;
    \?) echo "Invalid option -$OPTARG. Use the -h option for help." >&2; exit 1;;
  esac
done

# Shift the command line arguments so that the first argument is the extension
shift $((OPTIND - 1))

# Get the number of files with the specified extension in the current directory
num_files=$(ls *.$extension 2>/dev/null | wc -l)

# Display a message indicating how many files will be processed
printf "Processing %d files with extension '%s'...\n" "$num_files" "$extension"

# Create the output directory
mkdir -p "$directory"
printf "Creating output directory: %s\n" "$directory"

# Apply watermark to all files with the specified extension in the current directory
for file in *.$extension; do
  convert -density "$density" -compress Zip "$file" -background none -fill "rgba(128,128,128,0.3)" -pointsize "$pointsize" -gravity north -draw "translate 0,72 rotate -$angle translate -270,300 text 0,0 '$text'" -gravity south -draw "translate 0,72 rotate -$angle translate -250,400 text 0,0 '$text'" "$directory/$file"
  echo "Watermark applied to $file"
done

# Display a message indicating the process is complete
echo "Process complete."
