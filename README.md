# Brain Tag Conversor

<p align="center">
  <img width="616" height="612" src="https://github.com/hackingrio/educacao-2020-os-excelente/blob/master/img/logo.jpg">
</p>

1. [Apresentação](#Apresentação)
1. [O Produto](#O-Produto)
1. [Documentação](#Documentação)
1. [Quais são as possíveis aplicações?](#Quais-são-as-possíveis-aplicações)
1. [Metodologia](#Metodologia)
1. [Pré-requisitos](#Pré-requisitos)
1. [O que você precisa para usar este software?](#O-que-você-precisa-para-usar-este-software)
1. [Como instalar?](#Como-instalar)
1. [Como usar o software?](#Como-usar-o-software)
1. [Possíveis erros](#Possíveis-erros)
1. [Informações adicionais](#Informações-adicionais)


</head>

# Apresentação 

## Os Excelentes / Educacao 


![animacao](https://github.com/hackingrio/educacao-2020-os-excelente/blob/master/img/karan.png) *[Karan Luciano Silva](https://github.com/lkaranl)

![animacao](https://github.com/hackingrio/educacao-2020-os-excelente/blob/master/img/ingrid.png) *[Ingrid Marquetti Barzaghi Silva](https://www.linkedin.com/in/ingrid-marquetti-barzaghi-silva-7474721aa/)


![animacao](https://github.com/hackingrio/educacao-2020-os-excelente/blob/master/img/marcos.png) *[Marcos Lucas Pereira](https://github.com/mendex-sh)


Levando em consideração a real situação no qual o mundo se encontra e perante a quarentena, observamos as adaptações que estão sendo tomadas, pensando nisso, este grupo composto por três acadêmicos da Universidade do Estado de Mato Grosso (UNEMAT), sendo dois bacharéis, formandos, em Ciência da Computação e uma Licencianda em Matemática e Pedagogia, nos solidarizamos pela causa na área de educação. 


# O Produto

* __Brain Tag Conversor__ (BTC), é um programa desenvolvido com o intuito de converter recursos midiáticos para texto, ‘taggeando’ o conteúdo assistido, para que assim, facilite aluno e professor a buscar conteúdo online. Filtrando por campos de busca de acordo com as disciplinas do ensino fundamental, tendo ênfase na educação.Utilizando a linguagem Python e Shell Script, disponível para mobile e desktop.

# Documentação

## Quais são as possíveis aplicações?

Diante a realidade na qual o mundo o vem passando, onde temos que nos adaptar às mudanças em nossas rotinas, principalmente ao ramo da educação que sempre teve um sistema unitário de ensino, onde o mesmo vem se migrando cada vez mais para a área de tecnologia, utilizando portais, sites plataformas e demais aplicativo online como distribuidor dessas informações.

Com a utilização do Brain Tag Conversor o usuário terá um aumento de produtividade, pois com o ‘taggeamento’ por disciplinas obterá um ganho de tempo e acessibilidade aos conteúdos específicos. 

Com tal ferramenta o professor também poderá trabalhar a leitura e a associação semântica das palavras de tal vídeo, com a ferramenta de converter recursos midiáticos para texto. 


## Metodologia<br/>

Todos os testes foram realizados em um testbed com 3 computadores, todos os computadores estavam com sistemas baseados em kernel Linux e  1 com sistema Microsoft Windows 7 utilizando uma [virtual machine](https://pt.wikipedia.org/wiki/M%C3%A1quina_virtual) (VM).

As técnicas de pesquisas utilizadas neste projeto foram a revisão bibliográfica, que teve como base referenciais teóricos que tratam de linguagem de programação [Python](https://www.python.org/) e [Shell Script](https://pt.wikipedia.org/wiki/Shell_script), além da, biblioteca [SpeechRecognition](https://pypi.org/project/SpeechRecognition/) e a biblioteca [youtube-search](https://pypi.org/project/youtube-search/), ambas disponibilizadas de maneira gratuita. Muitos outros software também foram utilizados no projetos, todos eles de código livre, Ex: [Atom](https://atom.io/), [VirtualBox](https://www.virtualbox.org/), [Sublime Text](https://www.sublimetext.com/), entre outros. 

Assim, para o desenvolvimento do Brain Tag Conversor
a metodologia foi dada por: 

* Distribuição [Arch Linux](https://www.archlinux.org/);
* Distribuição Ubuntu 18.04 LTS;
* Máquina virtual Oracle VirtualBox 6.0.14-1;
* Biblioteca SpeechRecognition;
* Linguagem de programação Python;
* Conjunto de Shell Scripts.

O microcomputador utilizado no desenvolvimento possui as seguintes especificações de hardware:
* Processador: Intel i7 Q 740 (8) @ 1.734GHz;
* Memoria RAM: 8Gb de frequência 1600Mhz;
* SSD: 120Gb;
* HD: 500Gb;
* Placa de vídeo: NVIDIA GeForce GT 425M.

#### Desktop secundário - ARM
##### [Raspberry](https://www.raspberrypi.org/products/raspberry-pi-4-model-b/) Pi 4 Model B Rev 1.2
* CPU: BCM2835 (4) @ 1.500GHz;
* Memory: 2Gb;
* OS: Kali GNU/Linux Rolling armv7l.
* Obs: Optamos por testar nosso software também em processadores de arquitetura [ARM](https://pt.wikipedia.org/wiki/Arquitetura_ARM), pois este tipo de processador vem se demonstrando [cada vez mais utilizados](https://tecnoblog.net/291851/arm-anuncia-cortex-a77-processador-celulares-2020/), tanto no pessoal como na indústria.


## Pré-requisitos<br/>
### Desktop<br/> 
#### Hardware<br/>  
* MÍNIMO: Processador a 800 MHz, 512 MB de RAM, placa gráfica 16 MB;<br/>
* RECOMENDADO: Processador a 1734 MHz, 2048 MB de RAM, placa gráfica 32 MB.

#### Softaware<br/>
##### Linux<br/>
* [Python 3.6](https://www.python.org/) ou superior --> Linguagem de programação
* [speech_recognition](https://pypi.org/project/SpeechRecognition/) --> Biblioteca;
* [search_youtube](https://pypi.org/project/youtube-search/) --> Biblioteca;
* [Zenity](https://github.com/GNOME/zenity) -> Caixa de diálogo;
* [PIP](https://pypi.org/project/pip/) --> A instalação do PIP é opcional, ele é uma ferramenta de linha de comando que permite instalar pacotes de software escritos em Python.


* IMPORTANTE: Caso possua apenas o sistema operacional Microsoft Windows instalado em seu computador, sugerimos que use o software de emulação [VirtualBox](https://www.virtualbox.org/), e baixe qualquer [distribuição Linux](https://distrowatch.com/) que desejar, apesar de que, nós escrevemos esta documentação tomando como base que o usuário possui o sistema operacional Linux [Ubuntu 18.04 LTS](https://releases.ubuntu.com/18.04.4/) ou derivado. Nós da Brain Tag Conversor repudiamos qualquer ato de pirataria.


## O que você precisa para usar este software?<br/>
* Você precisa ter um computador (desktop, celular ou tablet) que satisfaça os [pré-requisitos](#Pré-requisitos) citado.

## Como instalar?<br/>
* Para distribuições baseadas em Debian de maneira manual você pode usar os seguintes comando:<br/>
`$sudo apt install python3`<br/>
`$sudo apt install python-pip`<br/>
`$sudo apt install zenity`<br/>
`$pip install SpeechRecognition`<br/>
`$pip install youtube-search`<br/>

* Caso prefira fazer de maneira mais fácil , você pode usar o script Install.sh, como ele todas as dependências e biblioteca serão instalados automaticamenteBiblioteca

Primeiro de permissão de execução ao script:
`sudo chmod +x Install.sh`<br/>

Em seguida execute o arquivo Install.sh:
`$sudo ./Install.sh`

## Como usar o software?<br/>
As bibliotecas necessitam que o arquivo esteja no formato [WAV](https://pt.wikipedia.org/wiki/WAV) ou [FLAC](https://pt.wikipedia.org/wiki/FLAC) nativo. Caso precise converter o arquivo de audio/video, use o software [Soundconverter](https://soundconverter.org/).

* Devido ao tamanhos dos arquivos de áudio, nos optamos por disponibilizar apenas dois arquivos de áudio como exemplo(fisica.wav, matematica.wav). Para adicionar mais áudios ao projeto, converter um audio ou video para o formato .WAV e cole-os na pasta raiz do projeto. .

##### Execute o arquivo main.py:<br/>  
`$python3 main.py` 

* A 'OPÇÃO 1' do software faz a conversão do áudio/vídeo em texto e o classifica em acordo com o tema Física, Química, Geografia, Inglês, História, Matemática, Português e Biologia. Depois de classificá-lo, o código irá pesquisar no YouTube, videos relacionados com o provável tema classificado.

`Obs: O software pode demorar um pouco para terminar de executar, variando de acordo com o desempenho da máquina utilizada.`


<p align="center">
  <img src="https://github.com/hackingrio/Brain-Tag-Conversor/blob/master/img/Brain.gif">
</p>


* A 'OPÇÃO 2', obtém informações como Título, Views, Likes, Dislikes, Id, Inscritos, Canal e uma breve Descrição do vídeo que for passado a url.

Para utilizá-la basta colocar a url do vídeo desejado: 

`Obs: O software pode demorar um pouco para terminar de executar, variando de acordo com a velocidade da conexão da internet.`


<p align="center">
  <img src="https://github.com/hackingrio/Brain-Tag-Conversor/blob/master/img/Brain2.gif">
</p>



## Possíveis erros<br/>
### ERRO 404<br/>
* Verifique sua conexão a internet;<br/>
* Página não existente, verifique se a URL foi digitada corretament.<br/>

### ERRO 403<br/>
* Você não tem permissão para acessar.

### Erro de digitação
* Mensagem do erro: recognize_google response = urlopen(request, timeout=self.operation_timeout)
* Você digitou errado o nome do arquivo;
* Este erro geralmente ocorre pela incompatibilidade do formato do áudio com o software, tente convertê-lo novamente.

### Erro de versão 
* Geralmente neste erro você recebe a mensagem “SyntaxError: Nun-ASCII character ‘/xc3’ in file xxx.py on line 29, but no encoding declared;”

Em alguns sistemas pode ocorrer da versão do Python ser por padrão inferior a terceira versão, para resolver use:

Primeiramente, devemos ver qual é a versão default com o seguinte comandos:<br/>
`$ls -l /usr/bin/python`

Neste caso, o que devemos fazer é somente recriar o link simbólico apontando para a outra versão que seja maior que a terceira. Exemplo:<br/>
`$sudo ln -sf /usr/bin/python3.6 /usr/bin/python`

## Informações adicionais
#### Fluxograma
* Fluxograma do BrainTagConsoler --> [Parte1](https://github.com/hackingrio/Brain-Tag-Conversor/blob/master/img/v1.png) [Parte2](https://github.com/hackingrio/Brain-Tag-Conversor/blob/master/img/v2.png) [Parte3](https://github.com/hackingrio/Brain-Tag-Conversor/blob/master/img/v3.png)
* Fluxograma da biblioteca YouTube_Search --> [Parte1](https://github.com/hackingrio/Brain-Tag-Conversor/blob/master/img/api.png)


**[⬆ back to top](#Brain-Tag-Conversor)**
