# 1-Ağ İşlemleri Giriş
- NAT (Network Address Translation) => TCP/IP ağındaki bir bilgisayarın yönlendirme cihazı ile başka bir ağa çıkarken adres uzayındaki bir IP ile yeniden haritalandırma yaparak IP paket başlığındaki ağ adres bilgisini değiştirme sürecidir.

# 2-Bağlantı Bilgilerini Öğrenme
- `ip addr show` veya `ip a` => bilgisayarımızın internete bağlandığı adres bilgilerini öğrenebiliriz.
- `hostname -I` => IP adresini verir.

# 3-Bağlantı Testi ve Ping Kavramı
- ping: Ağ üzerinden paket gönderip, geri gelmesini bekleyerek yanıt süresini ölçer.
- `ping turkcell.com.tr` => Turkcell sitesine bağlantıdaki yanıt süresini ölçer.
- `ping -c 5 turkcell.com.tr` => Hedef adrese kaç adet ping atacağımızı belirleriz.

# 4-Ağ Trafiğini İzleme
- tcpdump programı, bilgisayarınızdan giden ve gelen tcp paketlerini gösterir.
- `sudo tcpdump -v` tcp protokolü üzerinden geçen bütün paketleri görüntülememizi sağlar.
- iftop programı bağlandığınız sunucuları ve gelen/giden paket istatistiklerini gösterir.
- `sudo iftop` => Makinemizin bağlantı kurduğu ağ trafiğini özet bir şekilde paketlerin ayrıntılarını görmeden görebiliyoruz.

# 5-Wireshark ile Ağ Trafiği İzleme
- `sudo wireshark` => wireshark ile ağ adresini takip edebilirsiniz.

# 6-Dosya İndirme
- `wget https://gelecegiyazanlar.turkcell.com.tr` => dosya indirmeyi sağlar.

# 7-SSH ile Güvenli Bağlantı
- SSH güvenli bağlantı sunucusudur ve bilgisayarımızı uzaktan yönetmemizi sağlar.
- `sudo systemctl enable ssh` => ssh'ı aktif eder
- `sudo systemctl status ssh` => ssh'ın durumunu söyler.
- `sudo systemctl disable ssh` => siz bir daha çalıştırıncaya kadar durur
- `sudo systemctl stop ssh` => ssh hizmeti durur.