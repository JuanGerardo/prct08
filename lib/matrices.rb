class Matrices
    attr_reader	:m, :n, :mat, :matriz
    def initialize(m,n,mat)
      @m = m
      @n = n
      @matriz = Array.new(m){Array.new(n){0}}
      for i in 0..@m - 1
		for j in 0..@n - 1
	  		@matriz[i][j] = mat[i][j]   
	  	end 
      end
    end
    def filas
    	return @m
    end
    def columnas
    	return @n
    end
    def +(other)
      raise typeError,"Las matrices no tienen el mismo tamanio" unless (other.m == @m && other.n == @n)
c = Array.new(@m){Array.new(@n){0}}
	  for i in 0..@m - 1
	    for j in 0..@n - 1
		c[i][j] = @matriz[i][j] + other.matriz[i][j]
	    end
	  end
	 Matrices.new(other.m,other.n,c) 
    end
def -(other)
      raise typeError,"Las matrices no tienen el mismo tamanio" unless (other.m == @m && other.n == @n)
c = Array.new(@m){Array.new(@n){0}}
	  for i in 0..@m - 1
	    for j in 0..@n - 1
		c[i][j] = @matriz[i][j] - other.matriz[i][j]
	    end
	  end
	 Matrices.new(other.m,other.n,c) 
    end

def mostrar
	 for i in 0..@m - 1
	    for j in 0..@n - 1
			puts @matriz[i][j]
		end
	end
end
    
def ==(other)
raise typeError,"Las matrices no tienen el mismo tamanio" unless (other.m == @m && other.n == @n)
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

def -@
c = Array.new(@m){Array.new(@n){0}}
	for i in 0..@m - 1
	    	for j in 0..@n - 1
			c[i][j] = matriz[i][j] * -1
		end
	end		
	Matrices.new(@m,@n,c)
end

end
    