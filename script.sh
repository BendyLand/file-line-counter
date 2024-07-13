#!/bin/bash

# Directory to search
search_dir=$1

# File extension to look for
extension=$2

total_lines=0

while IFS= read -r file; do
  echo "Reading $file..."
  line_count=$(grep -cve '^\s*$' "$file")
  total_lines=$((total_lines + line_count))
done < <(find "$search_dir" -type f -name "*.$extension")

echo "Finished reading $extension files!"
echo "Total number of lines with text in *.$extension files: $total_lines"
