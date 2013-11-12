require 'fraccion.rb'
class Matriz
  
    def initialize (x, y)
        throw "Dimensiones invalidas" if (x * y) == 0 
        @xsize= x
        @ysize= y 
        @values= Array.new(x * y)
    end   
    def setValue(x, y, v)
        @values[y * @ysize + x]= v
    end
    
    def getValue(x, y)
        @values[y * @ysize + x]
    end
    
    def getx
      @xsize
    end

    def gety
      @ysize
    end
    
    def each
        y, x= 0, 0
        @values.each do |v|
            yield v, x, y
            if (x += 1) >= @xsize
                x= 0; y+= 1
            end
        end
    end
    
     
    
    def +(b)
	aux = 1
	d = Racional.new(7.0, 6.0)
	c = Matriz.new(@xsize, @ysize)
	  for i in (0...@xsize) do
	    for j in (0...@ysize) do
	      v = getValue(i, j) + b.getValue(i, j)
	      c.setValue(i, j, v)
	      if c.getValue(i, j).decimal != d.decimal
		aux = 0
	      end
	    end	
	  end
    aux
end

    def -(b)
	aux = 1
	d = Racional.new(-1.0, 6.0)
	c = Matriz.new(gety, b.getx)
	  for i in (0...@xsize) do
	    for j in (0...@ysize) do
	      v = getValue(i, j) - b.getValue(i, j)
	      c.setValue(i, j, v)
	       if c.getValue(i, j).decimal != d.decimal
		aux = 0
	      end
	    end	
	  end
    aux
  end

  def *(b)
    aux2 = 0
    d = Racional.new(20.0, 12.0)
    sum = Matriz.new(gety, b.getx)
    v = Racional.new(0, 0)
    c = Matriz.new(gety, b.getx)
    for i in (0...c.getx) do
      for j in (0...c.gety) do
	v.setden(0)
	v.setnum(0)
	sum.setValue(i, j, v)
	for k in (0...@ysize) do
	  if k!=0 
	    aux = (getValue(i, k) * b.getValue(k, j)) + sum.getValue(i, j)
	    sum.setValue(i, j, aux)
	  end
	  if k == 0 
	     aux = (getValue(i, k) * b.getValue(k, j))
	     sum.setValue(i, j, aux)
	  end
	c.setValue(i, j, sum.getValue(i, j))
	if c.getValue(i, j).decimal == d.decimal
	  aux2 = 1
	end
    end	
 end
end
aux2
end

end