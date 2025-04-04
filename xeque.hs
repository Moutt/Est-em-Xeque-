{-|
Nome: Vitor Tibães Santos  RA: 10418976

-}

-- Projeto Está em Xeque?

--verifica se rainha branca esta contida
cont[] = False
cont(a:xs)
  |a == 'D' = True
  |otherwise = cont xs

--analise de tabuleiro para buscar local da rainha branca
run [] = []
run(a:xs) 
  |cont a = a
  |otherwise = run xs

--buscando linha que se localiza a rainha branca
buscaLinha [] = 0
buscaLinha(a:xs) 
  |cont a = 1 + buscaLinha []
  |otherwise = buscaLinha xs

--buscando coluna onde se localiza a rainha branca
buscaColuna [] = -1
buscaColuna(a:xs)
  |a == 'D' = 1 + buscaColuna []
  |otherwise = 1 + buscaColuna xs
  

main =  do
        --salvando variaveis
        let tabuleiro = ["tcbdrbct","pppppppp","8","8","8","8","PPPPPPPP","TCBDRBCT"]
        let vetorDaRainha = run tabuleiro
        let linha = buscaLinha tabuleiro
        let coluna = buscaColuna vetorDaRainha
        
        --executando verificação
        print (vetorDaRainha, linha, coluna)

