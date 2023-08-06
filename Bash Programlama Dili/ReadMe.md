# 1- Kullanıcıdan Veri Alma
```bash
#!/bin/bash

# yorum satırı

echo Program Adı:  $0 # program adını verir

echo Degisken1: $1 Degisken2: $2

echo Process Id: $$ # Bu scriptin çalışmış olduğu process id'yi yani işlem idsini verecek

echo User: $USER # Bu programın çalıştığı kullanıcı

echo Random Number : $RANDOM # Rastgele numara üretir.

echo Hostname: $HOSTNAME # Hostname'i bildirir.

echo "Merhaba Dünya!!!"

echo "****************************************************************************"

myVariable="Merhaba Dünya"

echo $myVariable

read varname 

echo "varname: "$varname

read -p "Username: " username
read -sp "Password: " password

echo Username: $username
echo Password: $password
```