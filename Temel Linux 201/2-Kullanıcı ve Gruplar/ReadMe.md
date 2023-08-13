# 1- Kullanıcı ve Gruplar Giriş
- Linux'ta sistem kaynaklarına içinde bulunan dosyalara uygulamalara erişebilmek için kullanıcıların giriş yapması yani oturum açması/login olması gerekmektedir.
- Linux çok kullanıcılı bir sistemdir ve birden fazla kullanıcı oluşturarak sistemde bulunan bu kaynaklara erişim sağlanabilir farklı yetkilerle farklı gruplarla erişim sağlanabilir.
- Birçok program, sunucu yazılımı, komut; çok kullanıcılı sistem üzerinden çalışır.
- Modern dağıtımlarda birden fazla kullanıcı hazır gelir.
- Bir tanesi root kullanıcısıdır.
  * root kullnıcısı Tüm yetkilere ve erişimlere sahiptir.
  * Sistem seviyesinde yetkiler için kullnılır.
  * Ev dizinleri/ root dizinidir.
- Genel Amaçlı Kullanıcılar
  * Kendilerine veya gruplarına tanımlı yetkileri kullanırlar.
  * Ev dizinleri /home dizini altında bulunur.  

# 2-Grup Nedir?
- Linux'ta birden çok kullanıcının bir arada bulunduğu yapılara grup denir.
- Birden fazla kullanıcın bir arada bulunduğu erişim gruplarıdır.
- Sistem kaynaklar dosya ve uygulamalara birden fazla kullanıcının erişmesi için grup kavramı gerekli ve önemlidir.
- Grupların isimleri ve id'leri bulunur.
- GID = Grup ID
- Bir kullanıcı birden fazla gruba üye olabilir.
- Grup üyelikleri /etc/group altına tanımlanır.

# 3-Kullanıcıları Görüntüleme
- `cat /etc/passwd` => bu şekilde tüm kullanıcıları görebiliriz.
  * Tüm kullanıcıların listesi bulunur ve bu dosyayı tüm kullanıcılar okuyabilir.
  * Bu klasör bir tablo şeklinde tutulur ve `:` operatörü ile sütunlar ayrılmıştır.
  1. sütun kullanıcı adlarını belirler.  
  2. Sütun Eskiden parola hash'leri tutulurdu şimdi parola hash'leri tutulmuyor parolalar başka bir dosyada tutulmaktadır.
  3. Sütun Kullanıcı Id
  4. Sütun Grup Id
  5. Sütun kullanıcının tam ismi yer almaktadır.
  6. Sütun Kullanıcımızın home dizini yani ev dizini yer almaktadır.
     * root kullanıcısının home dizini kök dizinin altındaki root klasörüdür. Bu istisnai bir durumdur.
     *  Normal kullanıcının home dizini kök dizinin altındaki home klasörünün içinde kendi kullanıcı ismiyle tutulur.
  7. Sütun kullanıcımızın kabuk erişimi yer almaktadır.

- `cat /etc/shadow` => Kullanıcı parolaları burada tutulur.
  * Normal kullanıcıların erişimine kapalıdır.
  * Gerektiği zaman sadece sistem yönetici izinleriyle root yetkisi erişimleriyle sadece gerektiği zaman erişilebilir.

- `sudo ` => sudo komutunu yazdıktan sora önüne yazacağımız herhangi bir komut bize yönetici yetkileriyle çalışmasına izin verecektir.

# 4-Kullanıcı Ekleme
- Linux'ta yeni bir kullanıcı eklemek silmek parola değiştirmek gibi kullanıcı işlemlerini yapmak için yönetici yetkilerine sahip olmamız gerekir.
- `sudo useradd gelecegiyazanlar` => kullanıcı oluşturmak için kullanılır.
- `sudo adduser serhat` => kullanıcı oluşturmak için kullanılır.

# 5-Kullanıcı Silme
- `sudo deluser serhat` => kullanıcıyı siler.
- `sudo userdel serhat` => kullanıcıyı siler.