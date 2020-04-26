#!/bin/bash
#To create a matrix with all Proteins from MS
#while read line  #Loops through all the lines in your name file.
#do
#grep $line *csv | awk -F "\"*,\"*" '{print $2}' > $line.txt #Finds any lines with the current name and pull out data..
#sed -i "s/\n/\t/g" $line.txt #Removes newline characters and replaces them with tab characters so the data is all on one line.
#sed -i "s/^/$line/" $line.txt #Adds the name onto the front of the line
#cat $line.txt >> FINAL_MATRIX.txt #Adds what we just did to the matrix.
#done < unique.txt

awk -F "\"*,\"*" '{print $1}' *.csv > names.txt
sort -u names.txt > unique.txt
while read line #Loops through all the lines in your name file.
do
grep $line *.csv | awk -F',' '{print $2}' > $line.txt #Finds any lines with the current name and pull out data in this case columns 2.
tr "\n" "\t" < $line.txt > tmp #Removes newline characters and replaces them with tab characters so the data is all on one line.
mv tmp $line.txt
sed -i "s/^/$line/" $line.txt #Adds the name onto the front of the line.
echo "" >> $line.txt #Adds newline to end of line.
cat $line.txt >> ScoresMatrix.tex #Adds what we just did to the matrix.
done < unique.txt
