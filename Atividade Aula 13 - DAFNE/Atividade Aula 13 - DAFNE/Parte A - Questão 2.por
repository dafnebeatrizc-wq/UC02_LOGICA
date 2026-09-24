programa {
	funcao inicio() {
		real largura, comprimento, area
		
		escreva("Largura (m): ")
		leia(largura)
		
		escreva("Comprimento (m): ")
		leia(comprimento)
		
		// CORREÇÃO: Alterado de '+' para '*'
		area = largura * comprimento 
		
		escreva("Área: ", area, " m²")
	}
}
/* 
==================================================================
| [Entradas fornecidas]: largura = 4, comprimento = 5            |  
|----------------------------------------------------------------|
|         |             |      |                                 |
| largura | comprimento | area | Saída na Tela (Console)         |
|---------|-------------|------|---------------------------------|
|         |             |      |                                 |
|    4    |     ---     | ---  | Largura (m):                    |
|    4    |      5      | ---  | Comprimento (m):                |
|    4    |      5      |  9   | <-- BUG ENCONTRADO (Divergiu!)  |
|    4    |      5      |  9   | Área: 9 m²                      |
==================================================================

[EXPLICAÇÃO DO ERRO]: 
O erro ocorria na linha de atribuição da variável 'area'. O algoritmo 
estava realizando uma soma (+), calculando incorretamente o semiperímetro 
ao invés da área real do terreno. O operador foi corrigido para 
multiplicação.
