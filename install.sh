# Made By M3TOZZ
# https://github.com/m3tozz
USER=$([ -n "$SUDO_USER" ] && echo "$SUDO_USER" || echo "$USER")
	clear
banner(){
echo -e '\033[1;36m
Yusuf İpek i3 Config
https://github.com/yusufipk/i3-config            
'

        echo -ne "\e[0;32m
        EN: Should your config files be backed up? 
	TR: Config dosyalarınız yedeklensin mi?    (Y/N)" ; read islem
}

banner
if [[ $islem == y || $islem == Y ]]; then
	clear
	clear
	echo -e "\033[0;31mEN: Backing Up...\033[1;36m"
	echo -e "\033[0;31mTR: Yedekleme Yapılıyor...\033[1;36m"
	mkdir -p Backup-$(date +%Y-%m-%d-%H:%M)	
	cp -r /home/$USER/.config/i3 Backup-$(date +%Y-%m-%d-%H:%M)
	cp -r /home/$USER/.config/polybar Backup-$(date +%Y-%m-%d-%H:%M)
	clear
	echo -e "\033[31mEN: The Backup is Completed, the Installation Process is Underway...\033[0m"
	echo -e "\033[31mTR: Yedekleme Tamamlandı Yükleme İşlemine Geçiliyor...\033[0m"
	sleep 3
	rm -r /home/$USER/.config/i3
	cp -r i3 /home/$USER/.config/
	rm -r /home/$USER/.config/polybar
	cp -r polybar /home/$USER/.config/
	clear
	echo -e "\033[31mEN: The İnstallation Process Is Complete, You Can Restart Your i3 System And Enjoy Your New Desktop\033[0m"
	echo -e "\033[31mTR: Yükleme İşlemi Tamamlandı, i3 Sisteminizi Yeniden Başlatabilir Ve Yeni masaüstünüzün Keyfini Çıkartabilirsiniz\033[0m"


elif [[ $islem == n || $islem == N ]]; then
	clear
	echo -e "\033[0;31mEN: Setting Up...\033[1;36m"
	echo -e "\033[0;31mTR: Kurulum Yapılıyor...\033[1;36m"
	sleep 3
	rm -r /home/$USER/.config/i3
	cp -r i3 /home/$USER/.config/
	rm -r /home/$USER/.config/polybar
	cp -r polybar /home/$USER/.config/
	clear
	echo -e "\033[31mEN: The İnstallation Process Is Complete, You Can Restart Your i3 System And Enjoy Your New Desktop\033[0m"
	echo -e "\033[31mTR: Yükleme İşlemi Tamamlandı, i3 Sisteminizi Yeniden Başlatabilir Ve Yeni masaüstünüzün Keyfini Çıkartabilirsiniz\033[0m"

	else
	echo -e '\033[36;40;1m
	EN :Wrong transaction number!
	TR: Yanlış İşlem Numarası Girdiniz!
	'	
fi
