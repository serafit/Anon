#!/bin/bash

banner() {
        figlet 'Loggs'
        echo ''
        echo "выберите какие файлы вашей последней сессии вы хотите просмотреть:"
        echo ''
        echo '1. SayHello'
        echo '2. Saycheese'

        read varscipt
}


cookies() {
        if [ $varscipt -gt 1 ] # Старт
        then
        clear
        echo "$varscipt логги и файлы Saycheese"
        echo ''
        echo "-------------"
        cd .init1 && cd saycheese && ls
        echo "-------------"
        echo "Выберите 'название_файла.jpg' шоб переместить:"
        read files
        mv /data/data/com.termux/files/home/Anon/.init1/saycheese/$files /storage/emulated/0/
        cd && cd Anon
        figlet "Suchess!"
        else
        clear
        echo "$varscipt логги и файлы Sayhello"
        echo "-------------"
        cd .init1 && cd sayhello && ls
        echo "-------------"
        echo "Выберите 'название_файла.mp3' шоб переместить:"
        read files
        mv /data/data/com.termux/files/home/Anon/.init1/sayhello/$files /storage/emulated/0
        cd && cd Anon
        figlet "Suchess!"
        fi

}


banner;
cookies