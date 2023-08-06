# 1- Kullanıcıdan Veri Alma
```bash
#!/bin/bash

# yorum satırı

echo Program Adı:  $0 # program adını verir

echo Degisken1: $1 Degisken2: $2

echo Process Id: $$ # Bu scriptin çalışmış olduğu process id'yi yani işlem idsini verecek

echo User: $USER # Bu programın çalıştığı kullanıcı

echo Random Number : $RANDOM # Rastgele numara üretir.

echo Hostname: $HOSTNAME # Hostname'i bildirir.

echo "Merhaba Dünya!!!"

echo "****************************************************************************"

myVariable="Merhaba Dünya"

echo $myVariable

read varname 

echo "varname: "$varname

read -p "Username: " username
read -sp "Password: " password

echo Username: $username
echo Password: $password
```

# 2- Aritmetik İfadeler
```bash
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
```

# 3- Karar Verme Yapıları
- `-gt` => greater then
- `-lt` => less then
- `-eq` => equal

```bash
#!/bin/bash

# if [<conditional>]
# then
# <some commands>
# fi

if [ "merhaba" = "merhaba" ]; then
  echo "doğru durum"
fi

a=5
if [ $1 = $a ]; then
  echo "girilen değer doğru"
fi

#if [<conditional>]
#then
#  <some commands>
#else
#  <some commands>

if [ "merhaba" = "merhaba" ]; then
  echo "doğru durum"
else
  echo "yanlis durum"
fi

if [ $1 -eq $a ]; then
  echo "girilen değer doğru"
else
  echo "girilen deger yanlis"
fi

if [ $1 -lt $a ]; then
  echo "girilen deger $a'den küçüktür"
else
  echo "girilen deger $a'den büyüktür"
fi

if [ $1 -gt 3 ]; then
  echo "girilen deger 3'ten büyüktür"
elif [ $1 -eq 3 ]; then
  echo "girilen deger 3'e eşittir"
else
  echo "girilen deger $a'den büyüktür"
fi

if [[ "$2" = "test" ]] && [[ $1 -eq 5 ]]; then
  echo "boolean operatörü"
else
  echo "deger yanlis"
fi

case $3 in
start)
  echo "başlatılıyor"
  ;;
stop)
  echo "durduruluyor"
  ;;
*)
  echo "ön tanımlı durum"
  ;;
esac

if [[ $1 -gt 10 ]]; then
  echo "10'dan büyük sayı"
  if (( $1 % 2 == 0 )); then
    echo "sayımız 2'ye tam bölünüyor."
  else
    echo "sayımız 2'ye tam bölünmüyor"
  fi
fi
```