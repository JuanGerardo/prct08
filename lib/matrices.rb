class Matrices
    attr_reader	:m, :n, :mat, :matriz
    def initialize(m,n,mat)
      @m = m #Numero de filas
      @n = n #Numero de columnas
      #Creacion de la matriz
      @matriz = Array.new(m){Array.new(n){0}}
      for i in 0..@m - 1
		for j in 0..@n - 1
	  		@matriz[i][j] = mat[i][j]   
	  	end 
      end
    end
    
    #Metodo que devuelve el numero de filas 
    def filas
    	return @m
    end
    #Meodo que devuelve el numero de columnas
    def columnas
    	return @n
    end
    #Metodo que calcula la suma
    def +(other)
      #Si la matriz no se puede sumar salta el typerror y se interrumpe el programa
      raise typeError,"Las matrices no tienen el mismo tamanio" unless (other.m == @m && other.n == @n)
      #EN caso contrario se procede al calculo de la suma
      c = Array.new(@m){Array.new(@n){0}}
	  for i in 0..@m - 1
	    for j in 0..@n - 1
		c[i][j] = @matriz[i][j] + other.matriz[i][j]
	    end
	  end
	 Matrices.new(other.m,other.n,c) 
    end
  
  #Metodo que calcula la resta de dos matrices
  def -(other)
      #Si la matriz no se puede restar salta el typerror y se interrumpe el programa
      raise typeError,"Las matrices no tienen el mismo tamanio" unless (other.m == @m && other.n == @n)
      #EN caso contrario se procede al calculo de la resta
      c = Array.new(@m){Array.new(@n){0}}
	  for i in 0..@m - 1
	    for j in 0..@n - 1
		c[i][j] = @matriz[i][j] - other.matriz[i][j]
	    end
	  end
      Matrices.new(other.m,other.n,c) 
    end

#Metodo que muestra la matriz por pantalla
  def mostrar
	 for i in 0..@m - 1
	    for j in 0..@n - 1
			puts @matriz[i][j]
		end
	end
  end
  
  #Metodo que mira si dos matrices son iguales  
  def ==(other)
    #Comprueba el tamanio de ambas si alguna columna o fila no es igual salta el typerror
    raise typeError,"Las matrices no tienen el mismo tamanio" unless (other.m == @m && other.n == @n)
    #En caso contrario se evalua miembro a miembro de la matriz
    c = Array.new(@m){Array.new(@n){0}}
	for i in 0..@m - 1
	    for j in 0..@n - 1
			if(@matriz[i][j] == other.matriz[i][j])
				c[i][j] = true
			else
				c[i][j] = false
			end
		end
	end
    Matrices.new(other.m,other.n,c)
end
  
  #Metodo que calcula el opuesto de la matriz
  def -@
	c = Array.new(@m){Array.new(@n){0}}
	for i in 0..@m - 1
	    	for j in 0..@n - 1
			c[i][j] = matriz[i][j] * -1
		end
	end		
	Matrices.new(@m,@n,c)
  end

  #Metodo para el calculo del producto
  def *(other)
    #Si el multiplicador es una constante numerica, es decir, un escalar se multiplica miembro a miembro de la matriz
    if(other.is_a? Numeric)
     c = Array.new(@m){Array.new(@n){0}}
      for i in 0..@m - 1
        for j in 0..@n - 1
          c[i][j] = @matriz[i][j]*other
        end
      end
      Matrices.new(@m,@n,c)
    #En caso contrario se procede a calcular el producto de las matrices
    else
      #Han de coincidir el numero de columnas de una con el numero de filas de la otra
      raise TypeError, 'Las matrices no se pueden multiplicar debido a sus dimensiones ' unless (@n == other.m)
      c = Array.new(@m){Array.new(other.n){0}}  
      for i in 0..@m - 1
        for j in 0..other.n - 1
          for k in 0..@n -1
            c[i][j] += @matriz[i][k] * other.matriz[k][j]
          end
        end
      end
      Matrices.new(@m,other.n,c)
    end
	    
  end

end
