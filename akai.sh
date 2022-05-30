#!/bin/bash

authCheck(){

	if [ $(id -u) != "0" ]; then
		clear
			echo "Você precisa de permissão root para rodar esse script"
			echo "Na moral, faz a boa ai,entra como root"

init(){
	OP=$(whiptail --title "Sistema" --menu "Escolha uma dessas opções para recer informações desejadas:" --fb 15 60 10
		"1" "Disco" \
		"2" "CPU" \
		"3" "GPU" \
		"4" "RAM" \
		"5" "PCI" \
		"6" "Kernel" \
		"7" "Bateria" \
		"8" "Sair" 3>&1 1>&2 2>&3)

		if [ $OP == '1' ]; then
			whiptail --title "Informações de Disco" --scrolltext df -h /dev/sda2 | sudo du -csh /home/*
		fi

		if [ $OP == '2' ]; then
			whiptail --title "Informações da CPU" -scrolltext lscpu
		fi

		if [ $OP == '3' ]; then
		whiptail --title "Informações de GPU" --scrolltext sudo lshw -C video
		fi

		if [ $OP == '4' ]; then
		whiptail --title "Informações sobre a RAM" --scrolltext free -h
		fi

		if [ $OP == '5' ]; then
		whiptail --title "Informações sobre as PCI's" --scrolltext lspci -v
		fi

		if [ $OP == '6' ]; then
		whiptail --title "Versão do SO" --ok-button uname -a
		fi

		if [ $OP == '7' ]; then
		whiptail --title "Informações da Bateria" --scrolltext upower -i /org/freedesktop/UPower/devices/battery_BAT1
		fi

		if [ $OP == '8' ]; then
			echo "Até a próxima"
			break
		fi
	}
