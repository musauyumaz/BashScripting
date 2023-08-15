# 1-Süreçler Giriş
- Linux'ta çalışan her bir program bir süreçtir.

- Sürecin bir process Id'si(PID), user ID'si(UID), parent process ID'si(PPID) vardır.
  * Process ID(PID) => Süreç Kimliği aritmetik olarak artan bir sayı sistem tarafından tanımlanıyor. 
  * User ID(UID) => Sürecin tanımlandığı kullanıcının kimliği
  * Parent Process ID(PPID) => Üst süreç kimliği.

- Bir program birden fazla süreç olarak çalışabilir. Örneğin bir tarayıcı bir program. Ama tek bir process id'ye sahip olmayabilir. Birden fazla process id'ye sahip olabilir. Yeni bir sekme açtığımız zaman yeni bir süreç oluşur başka bir sekme açarsak yine bir süreç oluşur. Bu oluşturduğumuz süreçlerin process id'leri ilk oluşan ana süreçten farklıdır. Ancak bu süreçleri üstteki süreç oluşturduğu için parent process id'leri başlatan uygulamanın yani tarayıcının process id değerini gösterecektir.

- Ana sürecimizin oluşturduğu diğer süreçlerimizin parent process id'leri ana sürecin process id'sini gösterecektir. Bir process'in oluşturduğu bütün süreçlerin parent process id'leri o sürecin process id'sini gösterir.

# 2-Çalışan Süreçleri Listeleme
- `ps -ef` => sistem üzerinde çalışan tüm process'leri listeler.
- `ps -au musa` => sistem üzerinde çalışan belirtilen kullanıcıya ait process'leri listeler.
- `ps -auroot` => sistem üzerinde çalışan root kullanıcısına ait process'leri listeler.

# 3-Süreçlerin Canlı Takibi
- `ps -aux` => sistem üzerinde çalışan tüm process'leri listeler.
- `htop` => süreçleri anlık olarak takip edebiliriz.

# 4-Süreçlerin Sonlandırılması
- `kill 4172` => process id'li process'i sonlandırır. 
- CTRL + SHIFT + T => yeni bir terminal sekmesi açar.
- Programlar sabit process id'lere sahip değillerdir. Her çalıştıklarında farklı process id'lere sahip olabilirler.
- `sudo kill 4441` => yönetici yetkileriyle programı sonlandırma.

# 5-Süreç Sonlandırma Çeşitleri
- `kill -l` => komutu hangi parametrelerle kullanabiliriz onu görürürz.
- `kill -9 3388` => Process aniden durur.
- `kill -15 3388` => Process aniden durur.
- `pkill firefox` => Çalışan tüm firefox process'leri sonlanacaktır. `pkill` otomatik olarak process id'leri tespit eder.
- `htop` ile de arayüz üzerinden process'leri sonlandırabiliriz.

# 6-Arkaplan Süreç Yönetimi
- `firefox &` => Bir süreci arkaplanda çalışmasını sağlar.
- `nohup firefox &` komutu ile yazdığımız komutlar terminale bağlı olmadan çalışır ve terminal kapandıktan sonra da arka planda çalışmaya devam eder.
- CTRL + Z komutu ile uygulamayı arkaplana alabiliriz.
- `bg` komutu arka planda çalışan işleri görmemizi sağlar.
- `disown -h %1` komutu terminali kapattıktan sonra uygulamanın devam etmesini sağlar.

# 7-Linux'ta Servis Kavramı
- Linux'ta arka planda gerektiğinde kullanılmak için sürekli çalışan uygulamalara servis deriz.

- Sistem tarafından başlatılır. Arka planda sürekli çalışıyorlar. Tabi istediğimiz zaman durdurabiliyoruz yeniden başlatabiliyoruz.

- Arka planda kendine verilen işleri yapmak için sürekli çalışan programlar servis olarak adlandırılabilir.

- Sistem tarafından başlatılır.
- Yönetilebilir
- Eklenebilir/Silinebilir.

- Örnekler;
  * Kullanıcı Yönetimi => Login olma servisi
  * Kayıt tutma(Logging) => çalışan programların arka planda kayıt tutmasını sağlama bir servistir.
  * Web Servisleri => Sunucularda PHP MySQL veritabanı servisleri.
  * Uzaktan Erişim Servileri => SSH VNC RWP
  * Sanallaştırma Servisleri

# 8-Servisleri Görüntüleme
- `systemctl` programı Linux'ta sistem üzerindeki servisleri yönetmemizi sağlar.
- `list-units --type service` komutu sistem üzerindeki servis ünitelerini görüntülemizi sağlar.
- `list-units --type service --state running` komutu sistem üzerindeki yalnızca o an çalışan servis ünitelerini görüntülemizi sağlar.
- `systemctl list-units --type service` => servisleri listeler.
- `systemctl status cron.service` => service hakkında bize bilgi verir.

# 9-Servis Yönetimi
- `sudo systemctl stop NetworkManager.service` => servisi sonlandırır.
- `sudo systemctl start NetworkManager.service` => servisi başlatır.
- `sudo systemctl restart NetworkManager.service` => servisi restart eder/yeniden başlatır.