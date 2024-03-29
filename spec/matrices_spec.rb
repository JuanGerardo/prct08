#Fichero spec

require './lib/matrices.rb'

describe Matrices do
	before :each do
                @m1 = Matrices.new(2,2,[[1,2],[3,4]])
			
                @m2 = Matrices.new(2,2,[[1,2],[3,4]])
  	end
	#expectativa de suma
	describe "Suma de Matrices" do
                it "Halla la suma" do
                        x = @m1 + @m2
                        x.matriz.should eq([[2,4],[6,8]])
                end
        end
	
	#expectativa de resta
	describe "Resta de Matrices" do
                it "Halla la resta" do
                        x = @m1 - @m2
                        x.matriz.should eq([[0,0],[0,0]])
                end
       end
       
	#expectativa de igualdad
	describe "Ver si dos Matrices son igualles con ==" do
               it "Se comprueba si son iguales las Matrices" do
                        d = @m1 == @m2        
                        d.matriz.should be_true 
                end
        end
	
	
	#expectativa del opuesto
	describe "Opuesto de la Matriz" do
                it "Halla el opuesto" do
                        d = -@m1
				   d.matriz.should eq([[-1,-2],[-3,-4]])
                end
        end

	
	#expectativa del numero de filas
	describe "filas de la Matriz" do
                it "Halla el numero de filas" do
                        @m1.filas.should eq(2)
                end
        end

      
	#expectativa del numero de columnas
	describe "Columnas de la Matriz" do
                it "Halla el numero de columnas" do
                        @m1.columnas.should eq(2)
                end
        end
	
	
	#expectativa de multiplicacion de do matrices
	describe "Multiplicacion de Matrices" do
                it "Halla el producto" do
                        x = @m1 * @m2
                        x.matriz.should eq([[7,10],[15,22]])
                end
	end
       
       
	#expectativa de producto de una matriz por un escalar
	describe "Multiplicacion de Matrices" do
                it "Halla el producto" do
                        x = @m1 * 2
                        x.matriz.should eq([[2,4],[6,8]])
                end
       end
end