#!/bin/bash
# script Desenvolvido por: S1M40 P.C N3T0"
# funciona para envio de arquivos ou midia para iphone
# para funcionar você precissa está na mesma rede wi-fi do dispositivo (Android / IOS)
# funciona para compartilhar arquivos para pc (windows/mac/linux) e mobile (android/IOS/Windowsphone)
# necessario ter no pc/android/IOS/ google chrome instalado e usalo como navegador para isso

pkill python -e
yad=$(which yad)

if [ "$yad" == "/usr/local/bin/yad" ] ;then

    ip=$(ip addr show wlp3s0 | grep -Po 'inet \K[\d.]+')

    arquivos=$(yad --ico minecraft --center --width=1200 --height=500 --file-selection --directory  --title "Localize a pasta de envio")

    if [ $? == 0 ]; then
    cd $arquivos && python -m SimpleHTTPServer 5000 & yad --title "Cracking Dragon" --image img/unnamed.png --image-on-top\
     --text="Digite no Browser(de Preferencia no google chrome no caso do IOS ) do Dispositivo $ip:5000 \n Lembrando que tem que está na mesma rede wi-fi\n"\
     --center --width=800 --height=200 --button "Parar servidor(Conexão)":0

    if [ "$?" == "0" ] ; then
    break & pkill python -e
    clear
    fi
    clear

    clear
else

clear
fi

else
clear

echo "########################################"
echo "# precissa ter yad-dialog instalado !! #"
echo "########################################"
fi


# script Desenvolvido por: S1M40 P.C N3T0"

