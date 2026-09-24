programa {
	inclua biblioteca Objetos

	funcao inicio() {
		inteiro cliente = Objetos.criar_objeto() 
		
		Objetos.atribuir_propriedade(cliente, "nome", "Joana")
		Objetos.atribuir_propriedade(cliente, "idade", 30)
		
		escreva("Nome: ", Objetos.obter_propriedade_tipo_cadeia(cliente, "nome"))
	
		escreva("Idade: ", Objetos.obter_propriedade_tipo_inteiro(cliente, "idade")) 
	}
}

/*

  ERROS IDENTIFICADOS NO CÓDIGO ORIGINAL:
  1. O objeto "cliente" não foi inicializado com a função Objetos.criar_objeto(). Tentar atribuir propriedades a uma variável vazia gera erro de execução.
  2. A idade foi cadastrada como um valor inteiro (30), mas ao tentar recuperar, o código usou "obter_propriedade_tipo_real", o que causa incompatibilidade de tipos de dados.

*/

