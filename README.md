## UPGRADE FOR DEBIAN
```
apt update -y && apt upgrade -y && apt dist-upgrade -y && reboot
```

## UPGRADE FOR UBUNTU
```
apt update && apt upgrade -y && update-grub && sleep 2 && reboot
```

## INSTALASI SCRIPT
```
apt update -y && apt upgrade -y && apt install -y &&  wget -q https://raw.githubusercontent.com/Garut-SisiLaut/vvip/main/setup.sh && chmod +x setup.sh && ./setup.sh
```

## FIX BUG ATASI HAPROXY EROR
Masukkan perintah dibawah jika terdapat eror pada satus haproxy
```
cat /etc/xray/xray.key /etc/xray/xray.crt > /etc/haproxy/hap.pem
```
Setelah sertifikat dan kunci ssl berhasil dipindahkan, restart haproxynya
```
sudo systemctl restart haproxy
```
