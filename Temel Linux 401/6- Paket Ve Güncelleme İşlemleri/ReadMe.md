# 1-Paket Ve Güncelleme İşlemleri Giriş
- Paket genelde bir yazılımın derlenmiş hali ya da kaynak kodudur.
- İçinde kaynak kodları, bağımlılıklar, kurulum dosyaları ve dökümantasyon bulunabilir.
- Paket yöneticileri bilgisayarımıza bir paketi kolaylıkla kurmamızı kaldırmamızı ve yapılandırmamızı sağlayan sistemlerdir.

# 2-Apt Paket Yöneticisi
- apt bilgisayarımıza bir paketi kolaylıkla kurmamızı kaldırmamızı ve yapılandırmamızı sağlayan paket yönetim sistemidir.
- apt komutları
  * `update` paketlerin listesini günceller. 
  * `install` yüklemek istediğimiz paketi bilgisayarımıza yükler.
    + `apt install wireshark` 
  *  `remove` Paketi kaldırır.
     + `apt remove wireshark`
  * `upgrade` kurulu paketleri günceller. 
  

# 3-Paket Yöneticisinin Önbelleğini Güncellemek
- apt paket yöneticisi çalışırken paket listesini, versiyonlarını ve yükleme bilgilerini önbelleğinde tutar.
- `cat /etc/apt/sources.list`  paket listeleri burada tutulur.
- `sudo apt update` => paketleri günceller.

# 4-Paket Yöneticisi ile Paket Kurulumu
- `sudo apt install vlc` paketi bilgisayara kurar.
- `sudo apt search image manipulation` => sana anahtar kelimelerin geçtiği paketleri listeler.

# 5-Paket Yöneticisi ile Paket Güncelleme
- `sudo apt list --upgradable` => güncellenebilir, yükseltilebilir paketleri listeler.
- `sudo apt install apt` => paketi günceller/yükseltir.
- `sudo apt upgrade` => tüm paketleri günceller/yükseltir.