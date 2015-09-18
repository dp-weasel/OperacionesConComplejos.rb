#!/usr/bin/ruby

class Programa
	def initialize()
	@num = []
	@resultado = [0,' ; ',0]
	end
    
	def inicio
		print 'Ingrese el primer numero complejo separados por un espacio: '
	carga()
	print 'Ingrese el segundo numero complejo separados por un espacio: '
	carga()
	print "Cual operacion desea realizar??\n1) Sumar\n2) Restar\n3) Multiplicar\n4) Dividir\nIngrese la opcion deseada: "
	x = gets.chomp
	case x.to_i
	when 1 then suma()
	when 2 then resta()
	when 3 then multiplica()
	when 4 then divide()
	end
	mostrar()
	end
    
	def carga()
	a = gets
	a =~ / /
	@num<<$`.to_i; @num<<$'.to_i
	end
	
	def suma()
	@resultado[0] = @num[0] + @num[2]
	@resultado[2] = @num[1] + @num[3]
	end
    
	def resta ()
	@resultado[0] = @num[0] - @num[2]
	@resultado[2] = @num[1] - @num[3]
	end
    
	def multiplica()
	@resultado[0] = @num[0] * @num[2] - @num[1] * @num[3]
	@resultado[2] = @num[0] * @num[3] + @num[2] * @num[1]
	end
    
	def divide()
	if @num[2] != 0 && @num[3] != 0
		divisor = @num[2]**2 + @num[3]**2
		@resultado[0] = (@num[0] * @num[2] + @num[1] * @num[3]).to_f / divisor
		@resultado[2] = (@num[1] * @num[2] - @num[0] * @num[3]).to_f / divisor
		print 'El resultado es: ('
		@resultado.each do |e|
		print e
		end
		puts ')'
	else
		puts 'No papa, no podes dividir por cero'
	end
	@resultado = nil
	end
    
	def mostrar()
	if @resultado != nil
		print 'El resultado es: ('
		@resultado.each do |e|
		print e
		end
		puts ')'
	end
	puts 'Gracias por utilizar un software de Weasel Co. ;)'
	end
end

objeto = Programa.new
objeto.inicio
