# 1-Shell Programlama Giriş
- Shell programlama shell'e eriştiğimiz terminl penceresinden yazdığımız komutları sıraya koyarak belli bir düzene koyarak programlamaktan ibarettir.
- `echo` komutu ekrana bir şeyler yazdırmamızı sağlar.

```sh
#!/bin/sh

echo "Merhaba Dünya"
touch merhaba.txt
echo "biz dostuz" >> merhaba.txt
```

# 2-Bash & sh Farkı
- sh Unix shell, Unix benzeri işletim sistemleri için bir komut satırı kullanıcı arabirimi sağlayan bir komut satırı yorumlayıcısı veya kabuğudur.
- Bash, Brian Fox tarafından GNU Projesi için Bourne kabuğuna özgür yazılım alternatifi olarak yazılmış, Unix ve benzeri işletim sistemlerinde kullanılan komut satırı kabuğu ve bu kabuğun betik dilidir. GNU Tasarısı'nın parçasıdır ve birçok GNU/Linux dağıtımında ön tanımlı kabuk olarak gelir.
- dash debian için geliştirilmiştir. Daha performanslıdır. Daha az kaynak tüketir daha güvenlidir.

# 3-Shell Programlama Örneği - 1
- #(diyez) operatörü program içerisinde yorumlar bırakmamızı sağlar.
```bash
#!/bin/bash


echo "İsminizi Yazın: "
read isim # ekrandan girdi alınır isim değişkeni olarak tutulur.
echo "Merhaba $isim geleceği yazanlar platformuna hoşgeldiniz."

((toplam=100+67))
echo $toplam
```

# 4-Shell Programlama Örneği - 2
```bash
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
```

# 5-Başka Bir Shell Programını Çağırma 
```bash
#!/bin/bash

echo "Merhaba"
date 
echo
cal

echo "Görüşmek Üzere"
```