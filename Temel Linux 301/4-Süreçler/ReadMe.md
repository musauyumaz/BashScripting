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