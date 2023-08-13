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

# 5- Alias Kullanımı
- Alias, takma ad demektir. Linux terminal ortamında uzun komutları, parametreleri ve argümanları beraber kullandığımız durumlar olabilir. Sık kullandığımız komutları tekrar tekrar yazmak yerine, onlara kısa adlar vererek kullanmak için alias’tan faydalanırız.

## Alias Tanımlamak
- Terminal ortamında yeni bir alias tanımlamak için alias kisaad=‘komut --parametre arg’ komutunu kullanırız. Örneğin, apt-get update komutuna “guncelle” takma adını tanımlayarak çalıştırmak için şu komutu kullanırız:
    * `alias guncelle=’apt-get update’`
    * Bu işlemden sonra terminalde guncelle yazarak her seferinde apt-get update komutunun çalışmasını sağlayabiliriz.

## Alias Tanımını İptal Etmek
- Tanımlı bir alias tanımını iptal etmek için kullancağımız komut unalias komutudur. Örneğin, yukarıdaki guncelle alias tanımını kaldırmak için aşağıdaki komutu kullanırız:
  *  `unalias guncelle`

## Alias’ları Kalıcı Hale Getirmek

- Yukarıdaki komutları kullanarak tanımladığımız alias’lar, aktif oturum boyunca aktif olacak, ancak sistem yeniden başlatıldığında aktif olmayacaktır. Bu değişkenlerin kalıcı olmasını sağlamak için her sistem açılışında yeniden tanımlanmasını sağlamamız gerekir. Kalıcı olmasını istediğimiz alias tanımlarını aşağıdaki komutla düzenlediğimiz dosyaya eklemeliyiz:
  * `cat ~/.bashrc`