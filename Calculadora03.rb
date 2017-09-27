def escolha_operador
	puts "Escolha o tipo de operação abaixo:"
	puts "1 Adição"
	puts "2 Subtração"
	puts "3 Multiplicação"
	puts "4 Divisão"
	puts ""

	tipo_operador = gets.chomp().to_i

	if tipo_operador == 1
		return "Adição"
	elsif tipo_operador == 2
		return "Subtração"
	elsif tipo_operador == 3
		return "Multiplicação"
	elsif tipo_operador == 4
		return "Divisão"
	else
		return "erro"
	end
end

def calculo(operacao, x, y)
	if operacao == "Adição"
		return resultado = x + y
	elsif operacao == "Subtração"
		return resultado = x - y
	elsif operacao == "Multiplicação"
		return resultado = x * y
	elsif operacao == "Divisão"
		if y != 0
        return resultado = x / y
    else
        return "Invalido!. O valor não pode ser divido por 0"
    end
	end
end

continuar = 1

while continuar == 1

  calculo_atual = escolha_operador()

  if calculo_atual == "erro"

    puts "Opção invalido! Escolha a opção correta."

    else
    print "Entre com o primeiro valor da #{calculo_atual}: "
    p_numero = gets.to_i
    print "Entre com o segundo valor da #{calculo_atual}: "
    s_numero = gets.to_i

    result = calculo(calculo_atual, p_numero, s_numero)

    print "O resultado é #{result}"
		puts ""
		puts ""
    puts "Deseja continuar o calculo? Digite 1- Sim ou 2- Não"
    continuar = gets.to_i

		system ('cls')

    if continuar != 1

    end
  end
end
