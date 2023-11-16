#!/bin/bash

clear
show_menu() {
    echo -e "\e[34mДобро пожаловать в enecuum, выберите что надо сделать\e[0m"
    echo
    echo
    echo "1. Установить Docker"
    echo "2. Установить контейнеры enecuum с аддоном для miniPC"
    echo "3. Проверить работу контейнеров"
    echo "4. Запустить оба контейнера (при условии что они установлены)"
    echo "5. Остановить оба контейнера (при условии что они установлены)"
    echo "6. Вывести лог синхронизации базы"
    echo "7. Вывести полный лог контейнера polse_pos"
    echo "8. Удалить оба контейнера enecuum"
    echo "9. Удалить Docker"
    echo "10. Установить мод под определенный процессор"
    echo "0. Выход"
}

run_script_1() {
    ./install_docker.sh  
}

run_script_2() {
    ./install_enecuum.sh 
}

run_script_3() {
    ./test_pulse.sh  
}

run_script_4() {
    ./start_enecuum.sh  
}

run_script_5() {
    ./stop_enecuum.sh  
}

run_script_6() {
    ./log_base.sh  
}

run_script_7() {
    ./full_log.sh  
}

run_script_8() {
    ./delete_pulse.sh  
}

run_script_9() {
    ./delete_docker.sh  
}

run_script_10() {
    ./mods.sh  
}
echo
# Main function to display menu and process user input
main() {
    while :
    do
        show_menu
echo
echo
        read -p "Введите ваш выбор: " choice
        case $choice in
            1) run_script_1 ;;
            2) run_script_2 ;;
            3) run_script_3 ;;
            4) run_script_4 ;;
            5) run_script_5 ;;
            6) run_script_6 ;;
            7) run_script_7 ;;
            8) run_script_8 ;;
            9) run_script_9 ;;
            10) run_script_10 ;;
            0) exit ;;
            *) echo "Не верный выбор";;
        esac
    done
}

# Execute the main function
main
