#!/bin/bash
fruits=("apple" "banana" "cherry" "mango") #array is created here
for fruits in "${fruits[@]}"; #array is used here synatx is ${array[@]}
do
    echo "I like $fruits"
done

echo "************************************************** "

fruits=("apple" "banana" "cherry" "mango") #array is created here
for I in "${!fruits[@]}"; #array is used here synatx is ${array[@]}
do
    echo "$I i like ${fruits[$I]}"
done

echo "***************************************************"

fruits=("apple" "banana" "cherry" "mango") #array is created here
for I in "${!fruits[@]}"; #array is used here synatx is ${array[@]}
do  
    if (( $I%2==0 )); then
        echo " i like  ${fruits[$I]}"
    else
        echo " i dont like ${fruits[$I]}"
    fi
done

echo "***************************************************"

#!/bin/bash

fruits=("apple" "banana" "cherry" "mango") #array is created here

for I in "${!fruits[@]}"; #array is used here synatx is ${array[@]}
do  
    if [ $(expr $I % 2) -eq 0 ]; then
        echo "I like ${fruits[$I]}"
    else
        echo "I don't like ${fruits[$I]}"
    fi
done