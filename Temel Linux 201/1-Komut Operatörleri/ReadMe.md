# 1- Komut Operatörleri Giriş
## Wildcard Kavramı
- Komutları yazarken kriter oluşturmamızı sağlayan özel karakterlerdir. 
- Genelde dosya işlemlerinde kullanılır.
- Filtreleme işlemi görür.
- Zaman kazandırır!
- 3 adet wildcard karakteri vardır
  * `*`  => Bir veya birden fazla karakterin yerine geçebilecek bir joker karakterdir.
  * `?`  => Yanlızca bir karakterin yerine geçebilecek bir joker karakteridir.
  * `[]` => Yerine geçeceği karakterleri küme şeklinde belirten bir wildcard operatörüdür.

# 2- Yönlendirme Operatörleri - 1
- Komutların girdi ve çıktılarını yönlendirmemizi sağlar.
- `>` sembolü bir programın bir komutun çıktısını başka bir dosyaya yazmamızı sağlar.
- Dosyanın içeriğini tamamen değiştirir.

# 3- Yönlendirme Operatörleri - 2
- `>>` => Çıktıları dosyaların sonuna yazdırmak için kullanılır.
- Dosyanın içeriğini değiştirmez sonuna ekleme yapar.

# 4-Pipe Kullanımı
- `|` => Terminal çıktılarını farklı bir programa girdi olarak vermek için kullanılır.
- `wc` => kaç satır kaç kelime olduğunu getirir.
- `grep` => arama yapmamızı sağlar.
- `head` => baştan satırları getirir.