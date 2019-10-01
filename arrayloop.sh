# arrayLoop
#!/bin/bash
array= ( one two three ) # declares and fills array
for i in "${array[@]}" # array[n] fetches n-th element in array, array[@] fetches ALL elements in array
do
    echo $i
done