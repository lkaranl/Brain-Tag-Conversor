
#####   NAME:               Brain Tag Conversor
#####   VERSION:            0.2
#####   DESCRIPTION:        Get Tags
#####   DATE OF CREATION:   24/05/2020
#####   WRITTEN BY:         Karan Luciano Silva
#####   E-MAIL:             karanluciano1@gmail.com         
#####   DISTRO:             Arch Linux
#####   LICENSE:            GPLv3           
#####   PROJECT:            https://github.com/lkaranl/Scrits

import speech_recognition as sr
import os#BIBLIOTECA PARA USAR OPERACOES DO SISTEMA
os.system("clear")
print("\t*************************************************	")
print("\t  ____            _         _____           		")
print("\t | __ ) _ __ __ _(_)_ __   |_   _|_ _  __ _ 		")
print("\t |  _ \| '__/ _` | | '_ \    | |/ _` |/ _` |		")
print("\t | |_) | | | (_| | | | | |   | | (_| | (_| |		")
print("\t |____/|_|  \__,_|_|_| |_|   |_|\__,_|\__, |		")
print("\t                                     |___/ 		")
print("\t  ____                          _            		")
print("\t  / ___|___  _ ____   _____ _ __| |_ ___ _ __ 		")
print("\t | |   / _ \| '_ \ \ / / _ \ '__| __/ _ \ '__|		")
print("\t | |__| (_) | | | \ V /  __/ |  | ||  __/ |   		")
print("\t  \____\___/|_| |_|\_/ \___|_|   \__\___|_|		")
print("\t 													")
print("\t************************************************\n")
print("\tConversor de recursos midiáticos para texto.\n\tTaggeando o conteúdo assistido, para ajuadr o\n\taluno e professor a buscar conteúdos online. ")
print("\nOPCAO 1 = Transforma arquivos de audio em TXT, seleciona TAGs e classifica o video")
print("OPCAO 2 = Obtém informações sobre um determinado vídeo do YouTube.\n")

#Seleciona a escolha do usuario
escolha = int(input("Escolha uma das opcoes: "))
if escolha == 1:

	os.system("clear")#Limpa a tela
	print("Escola um dos ARQUIVOS DE AUDIO ->")
	os.system('ls |grep wav')#Lista os arquivos .wav
	os.system('ls |grep flac')#Lista os arquivos .flac
	AUX_PATH = input("\nNome do seu arquivo: ")#Seleciono o arquivo
	# PATH = askopenfilename()
	PATH = AUX_PATH#Recebe a auxliar

	r = sr.Recognizer()#Abilita a API
	file = open('file.txt', 'w')#Abre o arquivo
	file.write(PATH)#Grava o arquivo
	file.close()#Fecha o arquivo

	with sr.AudioFile(PATH) as source:#Lacl da API
		audio = r.record(source)#Tratamento do audio
		texto = r.recognize_google(audio, language='pt_BR')#Tratamento de audio
		file = open('file.txt','w')#Le o arquivo
		file.write(texto)#Grava o arquivo
		file.close()#Fecha o arquivo

	os.system("clear")#Limpa tela
	aux_pesquisa = open('tema.txt', 'r')#Le o arquivo
	pesquisa = aux_pesquisa.read()#Le o arquivo
	aux_pesquisa.close()#Fecha o arquivo
	print("Provavel Tema: {}".format(pesquisa))#Printa	
	
	search = input("Deseja perquisar por videos com as mesmas Tags no YouTube? (s,n): ")	
	if search == 's':#Se a resposta for 's', executa o codigo limpa.sh
		os.system("sh limpa.sh")#Chama o arquivo
	else:#se nao sai
		exit 		

	os.system('sh tags.sh 2> /dev/null')
elif escolha == 2:
	os.system('sh you.sh')
elif escolha == 3:
	print("Opcao 3")
else:
	print("OPCAO OINVALIDA")
###########################################################################################
