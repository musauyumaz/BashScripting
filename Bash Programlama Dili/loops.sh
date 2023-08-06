#!/bin/bash

echo '---------------------------- WHILE ----------------------------'
# while [[ condition ]]; do
# 	#statements
# done
counter=1
while [[ counter -lt 10 ]]; do
    echo $counter
    ((counter++))
done


 echo '---------------------------- FOR (C TYPE) ----------------------------'
# C tipi For Döngüsü
# for((i=0;i<n;i++)); do
#     statements
# done

for((i=0;i<10;i++)); do
    echo "$i"
done


echo '---------------------------- FOR ----------------------------'
# for var in <list>; do
# do
    # statements
# done

for l in {ls}; do
    echo "$l"
done



echo '---------------------------- FOR WITH RANGES ----------------------------'
for value in {1..5}; do
    echo $value
done

echo '---------------------------- UNTIL ----------------------------'
# until [ condition ]; do
#     # statements
# done
counter=1
until [[ $counter -gt 10 ]]; do
    echo $counter
    ((counter++))
done


echo '---------------------------- BREAK ----------------------------'
for((i=0;i<10;i++)); do
    if [[ $i -gt 5 ]]; then
        echo "break statement"
        break;
    fi
    echo $i
done


echo '---------------------------- CONTINUE ----------------------------'
for((i=0;i<10;i++)); do
    if [[ $i -gt 5 ]]; then
        echo "continue statement"
        continue;
    fi
    echo $i
done


echo '---------------------------- SELECT ----------------------------'
names="Bash Python C Java Quit"

PS3='Seçim Yapınız: '

select name in $names; do
    if [[ $name == "Quit" ]]; then
        break;
    fi
    echo $name 'dersine hoşgeldiniz'
done