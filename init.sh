#!/bin/bash

choose() {
# Banner
figlet  "Init 1";

echo "1. Saycheese;"
echo "2. SayHello"
echo ""
Home=$(pwd)
echo "Вы в деректории: $Home"

#functional:

read varscipt

        if [ $varscipt -gt 1 ] # Старт
        then
        echo '$varscipt is sayHello'
        clear
        cd .init1 && cd sayhello && bash sayhello.sh
        else
        echo "$varscipt is saycheese"
        cd .init1 && cd saycheese && bash saycheese.sh
        fi
}


update() {
        echo "Хотите ли вы обновить/установить пакеты перед началом работы? "
        echo "1. Да"
        echo "2 и больше. Нет"
        read set

        if [ $set -gt 1 ] # Старт
        then
        echo "Нет"
        clear
        else
        echo "Да"
         pkg install git && pkg install figlet && pkg install php -y && pkg install openssh -y && pkg install curl && pkg install wget
        mkdir .init1 && cd .init1 && git clone https://github.com/hangetzzu/saycheese && git clone https://github.com/d093w1z/sayhello
        cd && cd Anon
        figlet "Suchess!"
        fi
}

update;
choose