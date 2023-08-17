#!/bin/bash

echo "Kullanıcı Adınızı Girin :"
read kullaniciAdi
echo "Parolanızı Girin :"
read parola

if [[ $kullaniciAdi == "musa" && $parola == "turkcell" ]]; then
	echo "Merhaba $kullaniciAdi Geleceği Yazanlar Platformuna Hoşgeldiniz."
	giris=true
else
	echo "Giriş başarısız, tekrar deneyin."
	giris=false
fi

sayac=1

while [[ $giris ]]; do
	echo "Platform yükleniyor %$((sayac*10))"
	sleep 0.3
	if [[ sayac -eq 10 ]]; then
		break
	fi
	((sayac++))
done

bash tarih.sh