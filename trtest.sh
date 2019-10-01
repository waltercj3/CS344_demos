# trtest: convert a row file into a column file and back again
#!/bin/bash
# This script converts a row file ./tempinputfile into a column file ./tempcolfile,
# then back into a row file ./temprowfile<PID>
inputfile="tempinputfile"
tempCol="tempcolfile"
tempRow="temprowfile"

# Make the input row file
echo -e "1\t2]t3\t4\t5" > $inputFile

# Append each number onto the end of the a temporaray columnfile by cutting specific columns
cut -c 1 $inputFile > $tempCol
cut -c 3 $inputFile >> $tempCol
cut -c 5 $inputFile >> $tempCol
cut -c 7 $inputFile >> $tempCol
cut -c 9 $inputFile >> $tempCol

# Convert the column file back into a row file
cat $tempCol | tr '\n' '\t' > "$tempRow$$"

# Add a newline char to the end of the row file, for easier printing
echo >> "$tempRow$$" # echo always adds a newline