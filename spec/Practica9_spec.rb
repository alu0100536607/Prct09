require 'Practica9.rb'
matriz = Matriz.new(2,2)
matriz2 = Matriz.new(2,2)
matriz3 = Matriz.new(2, 2)
f1 = Racional.new(1.0,2.0)
f2 = Racional.new(2.0,3.0)
f3 = Racional.new(5.0,4.0)
describe Matriz do
  describe "Compare" do
    
    it "la matriz deberia ser una matriz 3x3 rellenada a 0" do
    matriz.setValue(0, 0, f1)
    matriz.setValue(0, 1, f1)
    matriz.setValue(1, 0, f1)
    matriz.setValue(1, 1, f1)
    matriz2.setValue(0, 0, f2)
    matriz2.setValue(0, 1, f2)
    matriz2.setValue(1, 0, f2)
    matriz2.setValue(1, 1, f2)
    matriz3.setValue(0, 0, f3)
    matriz3.setValue(0, 1, f3)
    matriz3.setValue(1, 0, f3)
    matriz3.setValue(1, 1, f3)
    
     end
     
   it "la suma de la matriz deberia ser 7/6" do
   
    (matriz+matriz2).should equal(1)
    
   end

      it "la resta de la matriz deberia ser -1/6" do
   
    (matriz-matriz2).should equal(1)
    
   end
   
     it "la multiplicacion de la matriz deberia ser 5/3" do
   
    (matriz3*matriz2).should equal(1)
    
   end
   
  end
end