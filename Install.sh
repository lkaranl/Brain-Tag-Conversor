#!/usr/bin/env bash
_checks=`id -u`
_currentuser=`whoami`
if [ $_checks != 0 ]; then
	echo “Você é o usuário ${_currentuser}. Precisa ser root...”
	exit 1
else
	sudo apt update -y
	sudo apt install -y
	sudo apt install python3 -y
	sudo apt install python3-pip -y
	sudo apt install zenity -y
	sudo apt install flac -y
	pip3 install SpeechRecognition
	pip3 install youtube-search
fi	