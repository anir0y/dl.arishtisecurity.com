#!/bin/bash

# File name for the index
index_file="index.html"

# Create or clear the index file
echo "<!DOCTYPE html>" > $index_file
echo "<html>" >> $index_file
echo "<head>" >> $index_file
echo "<title>Index of PDF files</title>" >> $index_file
echo "<style>" >> $index_file
echo "body { font-family: Arial, sans-serif; text-align: center; background-color: #f0f0f0; }" >> $index_file
echo "h1 { color: #333; }" >> $index_file
echo "ul { list-style-type: none; padding: 0; }" >> $index_file
echo "li { margin: 10px 0; }" >> $index_file
echo "a { text-decoration: none; color: #007BFF; font-size: 20px; }" >> $index_file
echo "a:hover { text-decoration: underline; }" >> $index_file
echo "</style>" >> $index_file
echo "</head>" >> $index_file
echo "<body>" >> $index_file

# Add logo to the center
echo "<img src=\"https://i.imgur.com/uzo8rDi.png\" alt=\"Logo\" style=\"margin-top: 50px; width: 150px; height: 150px;\">" >> $index_file

# Add title
echo "<h1>Index of PDF files</h1>" >> $index_file
echo "<ul>" >> $index_file

# Loop through all PDF files in the current directory
for file in *.pdf; do
  echo "<li><a href=\"$file\">$file</a></li>" >> $index_file
done

echo "</ul>" >> $index_file
echo "</body>" >> $index_file
echo "</html>" >> $index_file

echo "Index file '$index_file' has been updated."