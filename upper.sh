#!/bin/bash
echo "enter the file name:"
read file_name
if [!-f"$file_name"];
then
echo "file'$file_name' not found"
exit 1
fi
output_file="result.txt"
tr'[:upper]''[:lower]'<"$file_name">"$output_file"
line_count=$(wc -l<"$output_file")
word_count=$(wc -w<"$output_file")
character_count=$(wc -m<"$output_file")
echo"line count:$line_count"
echo"word count:$word_count"
echo"character count:$character_count"
echo"resultant file(in descending order):"
sort -r"$ouput_file"
rm "$output_file"
