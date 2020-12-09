#!/bin/bash
opc="escolha"

menu (){
    while true $opc != "escolha"
    do
        clear
        echo "================================================"
        echo "----> BEM VINDO AO GERENCIADOR DE BANCO!!"
        echo -e "\n1 ] Iniciar"
        echo -e "\n2 ] Parar"
        echo -e "\n3 ] Matar"
        echo "================================================"

        echo "Digite a opção desejada:"
        read opc

        case "$opc" in
            1)
                echo "Criando ou Iniciando "
                docker-compose up --d
                echo "Banco criado ou iniciado"
                break
            ;;
            2)
                echo "Parando "
                docker-compose down
                echo "Parando"
                break
            ;;
            3)
                echo "Destruindo "
                docker-compose down -v  --rmi all
                echo "Destruido"
                break
            ;;
        esac
    done
}
menu