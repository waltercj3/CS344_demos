# forloop
#!/bin/bash
oneline="1  2   3   4   5" # tab delimited, but works for spaces too
for i in $oneline
do
    echo "i is: $i" # could also sum them up, etc. here
done