uruchom() {
	nazwa="$1"
	shift
	"$@" &
	echo "Uruchamiam $nazwa..."
}

apk() {
	case "$1" in
	"ff") uruchom "Firefox" firefox ;;
	"dc") uruchom "Discord" flatpak run com.discordapp.Discord ;;
	"gpt") uruchom "ChatGPT" chatgpt ;;
	"cmd") uruchom "Konsola" ptyxis ;;
	"spo") uruchom "Spotify" flatpak run com.spotify.Client ;;
	"vsc") uruchom "Visual Studio Code" flatpak run com.visualstudio.code ;;
	*) echo "Nieznana aplikacja!" ;;
esac
	
}
while true; do
	echo  "=== WORKSPACE MANAGER==="
	echo "1.Nauka"
	echo "2.Rozrywka"
	echo "3.Programowanie"
	echo "4.Wyjście"

	echo "Wybierz profil: " 
	read -r  wybor

	echo "Wybrano profil: $wybor"

	case "$wybor" in
		1)
		echo "Włączam pulpit nauka"
		apk ff
		apk gpt
		apk spo
		apk cmd
		;;
		2)
		echo "Włączam pulpit rozrywka"
		apk ff
		apk dc
		apk spo
		;;
		3)
		echo "Włączam pulpit programowanie"
		apk ff
		apk vsc
		apk gpt
		;;
		4)
		echo "Wyłączam aplikację."
		break
		;;
		*)
			echo "Nieznany pulpit."
			;;
	esac

done
	
