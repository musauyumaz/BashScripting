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