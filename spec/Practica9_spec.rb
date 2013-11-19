require 'Practica9.rb'

describe Matriz do
before (:each) do
  
  f1 = Racional.new(1.0,2.0)
  f2 = Racional.new(2.0,3.0)
  f3 = Racional.new(5.0,4.0)
#Densas
  @m11 = Matriz.constructor(3, 3, [1,1,1,1,1,1,1,1,1])
  @m12 = Matriz.constructor(3, 3, [2,2,2,2,2,2,2,2,2])
  @m13 = Matriz.constructor(3, 3, [3,3,3,3,3,3,3,3,3])
  @m14 = Matriz.constructor(3,3, [-1,-1,-1,-1,-1,-1,-1,-1,-1,])
  @m15 = Matriz.constructor(3, 3, [6,6,6,6,6,6,6,6,6])
  
      
  #Dispersas
  
  @m21 = Matriz.constructor(3, 3, [1,0,0,0,0,0,1,0,0])
  @m22 = Matriz.constructor(3, 3, [2,2,0,0,0,0,0,0,2])
  @m23 = Matriz.constructor(3, 3, [3,2,0,0,0,0,1,0,2])
  @m24 = Matriz.constructor(3, 3, [-1,-2,0,0,0,0,1,0,-2])
  @m25 = Matriz.constructor(3, 3, [2,2,0,0,0,0,2,2,0])
   #"Hibridas"
  @m31 = Matriz.constructor(3, 3, [3,3,1,1,1,1,1,1,3])
  @m32 = Matriz.constructor(3, 3, [-1,-1,1,1,1,1,1,1,-1])
  @m33 = Matriz.constructor(3, 3, [2,2,2,2,2,2,2,2,2])
end  
#Operaciones Densa con Densa
  it "La suma de la matriz a y b deberia ser c " do
  
     (@m11+@m12).should == @m13
     
  end
  it "La resta de la matriz a y b deberia ser d " do
  
     (@m11-@m12).should == @m14
     
  end
  it "La multiplicacion de la matriz a y b deberia ser c " do
  
     (@m11*@m12).should == @m15
     
  end


  
#Operaciones Dispersa con Dispersa
  
  it "La suma de la matriz a y b deberia ser c " do
  
     (@m21+@m22).should == @m23
     
  end
  it "La resta de la matriz a y b deberia ser d " do
  
     (@m21-@m22).should == @m24
     
  end
  it "La multiplicacion de la matriz a y b deberia ser c " do
  
     (@m21*@m22).should == @m25
     
  end
  
  #Operaciones Dispersa con Densas
  
  it "La suma de la matriz a(Densa) con b(Dispersa) deberia ser C(Densa) " do
    (@m11+@m22).should == @m31
  end
  it "La resta de la matriz a(Densa) con b(Dispersa) deberia ser C(Densa) " do
    (@m11-@m22).should == @m32
  end
  
  it "La multiplicacion de la matriz a(Densa) con b(Dispersa) deberia ser C(Densa) " do
    (@m11*@m22).should == @m33
  end
end
