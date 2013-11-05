class Matrices
    attr_reader	:m, :n, :mat
    def initialize(m,n,mat)
      @m = m
      @n = n
      @matriz = Array.new(m){Array.new(n){0}}
      for i in 0..@m - 1
	for j in 0..@n - 1
	  @matriz[i][j] = mat[i][j]   
	  puts @matriz[i][j]
	  end 
      end
    end
    
    def +(other)
      raise typeError,"Las matrices no tienen el mismo tamanio"
      unless (other.m == @m && other.n == @n)
	  for i in 0..@m -1
	    for j in 0..@n -1
		C[i][j]=@matriz[i][j]+other.matriz[i][j]
	    end
	  end
	  aux = Matrices.new(other.m,other.n,C) 
	end
    end
    
 end
    
    a = Matrices.new(2,2,[[5,2],[6,7]])
    b = Matrices.new(2,2,[[1,2],[3,4]])
	a+b