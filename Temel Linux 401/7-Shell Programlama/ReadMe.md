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
- dash debian için geliştirilmiştir. Daha performanslıdır Daha az kaynak tüketir daha güvenlidir.