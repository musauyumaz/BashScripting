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
- 