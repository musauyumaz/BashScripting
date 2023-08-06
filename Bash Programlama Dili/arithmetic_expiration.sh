# let <arithmetic expression>
echo "********************** let **********************"
let a=5+4
echo "1: "$a #9

let "a = 5 + 4"
echo "2: "$a #9

let a++
echo "3: "$a #10

let ++a
echo "4: "$a #11

let --a
echo "5: "$a #10

let "a=5*9"
echo "6: "$a #45

let a=5*8
echo "7: "$a #40

let "a= $1 + 20" #20
echo "8: "$a

let a=10%3
echo "9: "$a #1

echo "10: "5+4 #5+4

# expr item1 operator item2
echo "********************** expr **********************"

expr 2 + 3

expr "2 + 3"

expr 2+3

expr 2 * 3

expr 2 \* 3

expr 10 % 3

a=$(expr 10 - 5)
echo $a

expr 4 / 2

# $(( expression ))
echo "********************** \$(( expression )) **********************"

a=$(( 2 + 3))
echo $a

a=$((2+3))
echo $a

b=$(($a+3))
echo $b

((b++))
echo $b

# Değişken Uzunluğu
# ${#variable}
echo "********************** \${#variable} **********************"

a="Merhaba Dünya"
echo ${#a}

b=1234
echo ${#b}

