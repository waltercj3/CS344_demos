# sumloop
#!/bin/bash
sum=0
TMP1=./tempfile
echo -e "8\n7\n6" > $TMP1 # one number per line

while read num
do
    echo "In Loop"
    echo "num: $num"
    sum=`expr $sum + $num` # backticks make subshell
    echo "sum: $sum"
    echo "End of Loop\n"
done < $TMP1 # unlike readloop, this is not $1; this uses the filename specfied above for input