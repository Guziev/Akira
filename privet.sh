#!/bin/bash

fortune | cowsay

echo "Escolha uma opção"
select OP in Disco CPU GPU RAM Kernel Bateria Sair; do echo ${OP};
  case $OP in 
	"Disco")
		echo "Disco"
		df -h /dev/sda2
		sudo du -csh /home/*
		;;
	"CPU")
		echo "CPU"
		lscpu
		;;
	"GPU")
		echo "GPU"
		sudo lshw -C video
		;;
	"RAM")
		echo "RAM"
		free -h
		;;
	"PCI")
		echo "PCI"
		lspci -v
		;;
	"Kernel")
		echo "Kernel"
		uname -a
		;;
	"Bateria")
		echo "Bateria"
		upower -i /org/freedesktop;UPower/devices/natery_BAT1
		;;
	"Sair")
		echo "Até a Próxima"
		break
		;;
  esac
done;
