#!/bin/bash

# Directory to search
search_dir=$1

# File extension to look for
extension=$2

# Initialize total line count
total_lines=0

# Find files with the specified extension and process each one
while IFS= read -r file; do
  # Count the number of lines with text in the current file
  line_count=$(grep -cve '^\s*$' "$file")
  # Add the line count to the total
  total_lines=$((total_lines + line_count))
done < <(find "$search_dir" -type f -name "*.$extension")

# Output the total number of lines
echo "Total number of lines with text in *.$extension files: $total_lines"
