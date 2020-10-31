#!/usr/bin/env bash
function youtube(){
	(

    #Crie a variável _video em uma pasta temporária com o comando "mktemp"
    _video=$(mktemp)
    
    # Faça o mesmo com o vídeo
    _channel=$(mktemp)
    
    # Cria a variável _url e armazena uma String nela
    _url="https://youtube.com/channel"
    
    #Cria a caixa do zenity levando informações do usuário
    _a=$(zenity --title="Brain - YOUTUBE" --text "Entre com a URL" --entry --width="350" --height="50" )
    
	#Command wget, 1 será usado no final do código como parâmetro, -O (muscle) reproduzirá o arquivo na variável _video, modo silencioso
    wget "$_a" -O "$_video" 2>/dev/null
    
     #Cria as variáveis ​​com comandos
     _title=$(grep '<title>' "$_video" | sed 's/<[^>]*>//g' | sed 's/ - You.*//g')
     _viesw=$(grep 'watch-view-count' "$_video" | sed 's/<[^>]*>//g')
     _like=$(grep 'like-button-renderer-like-button-unclicked' "$_video" | sed 's/<[^>]*>//g;s/ //g')
     _dislike=$(grep 'like-button-renderer-dislike-button-unclicked' "$_video" | sed 's/<[^>]*>//g;s/ //g')
     _id=$(sed 's/channel/\n&/g' "$_video" | grep '^channelId' |sed -n 1p | sed 's/isCrawlable.*//g;s/..,.*//g;s/.*"//g')
     _subscriber=$(sed -n '/subscriber-count/{p; q;}' "$_video" |sed 's/.*subscriber-count//g' | sed 's/<[^>]*>//g;s/.*>//g')
     _descricao=$(grep 'watch-description-text' "$_video" |sed 's/.*id="watch-description-text" class=""//g' |sed 's/<[^>]*>//g' |cut -c1-100 |sed 's/>//g')
     
    #Command wget junta as variáveis ​​_url, _id e lança a junção na variável _channel
    wget "$_url/$_id" -O "$_channel" 2>/dev/null
    
    # Comando variável
    _tchannel=$(sed -n '/title/{p; q;}' "$_channel" | sed 's/<title> //g')
    
   # Percentual da barra de progresso Zenity
   echo "5"
   echo "# Fazendo variáveis..." ; sleep 1
   echo "25"
   echo "# Download..." ; sleep 1
   echo "50" ;  sleep 1
   echo "75" ;  sleep 1
   echo "100"
   echo "# Finalizado!"
   
    #Result box exibindo as informações para o usuário
    zenity --info --title="YOUTUBE" --text="TITLE CHANNEL: $_tchannel\nTITLE VIDEO: $_title\nID VIDEO: $_id\nVIEWS: $_viesw\nLIKES: $_like\nDISLIKES: $_dislike\nINSCRIBLES: $_subscriber\nDESCRIPTION 100 LINES: $_descricao" --width="450" --height="50" 2>/dev/null
    
    # Barra de progresso Zenity
    ) |
   zenity --progress \
   --title="Download YouTube" \
   --text="Carregando..." \
   --percentage=0 --width="250" --height="50"

    #Manipulação de erros
    if [ "$?" = -1 ] ; then
       zenity --error \
       --text="Download cancelado."
   fi
   clear
}
#Chama a função do YouTube
youtube
