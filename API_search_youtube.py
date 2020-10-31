from youtube_search import YoutubeSearch

aux_pesquisa = open('tema.txt', 'r')
pesquisa = aux_pesquisa.read()
aux_pesquisa.close()
results = YoutubeSearch(pesquisa, max_results=10).to_dict()
arquivo = open('log.txt', 'w')
arquivo.writelines(str(results))
arquivo.close()