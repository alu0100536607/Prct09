
class Matriz

    def initialize(x, y)
          throw "Dimensiones invalidas" if (x * y) == 0 
          @xsize= x
          @ysize= y 
    
    end

    def Matriz.constructor (x, y, v)
	  zero = 0
	  for i in (0...x) do
	    	for j in (0...y) do
		  if (v[j * y + i].is_a?(Racional)==false)
			  if (v[j * y + i] == 0)
				  zero = zero +1
			  end
			end
		end
	  end
	if ((zero * 100)/(x * y) >= 60)
		Matrizdispersa.new((x*y)-zero, x, y, v)
	else
		Matrizdensa.new(x, y, v)
	end
    end

   def getf
   
     @xsize
   
   end
  
   def getc
   
     @ysize
   
   end
   
   
  def +(object)
  
    if ((@xsize == object.getf) && (@ysize == object.getc))  
      v = Array.new
      for i in (0...@xsize) do
	for j in (0...@ysize) do
	  v << (self[i ,j] + object[i, j])
	end
      end
      Matriz.constructor(@xsize, @ysize, v)
    end
  
  end
    
    def -(object)
  
    if ((@xsize == object.getf) && (@ysize == object.getc))  
      v = Array.new
      for i in (0...@xsize) do
	for j in (0...@ysize) do
	  v << (self[i ,j] - object[i, j])
	end
      end
      Matriz.constructor(@xsize, @ysize, v)
    end
  
  end
    
  
  def ==(object)
   
    if ((@xsize == object.getf) && (@ysize == object.getc))  
      for i in (0...@xsize) do
	for j in (0...@ysize) do
	  if (self[i, j] == object[i, j])
	    aux = true
	  else
	    return aux = false
	  end
	end
      end
      aux
    end
  
  end
   def *(object)
     if(object.is_a? Numeric)
      v = Array.new
      for i in (0...@xsize) do
	for j in (0...@ysize) do
	  v << (self[i,j] * object)
	end
      end
      return Matriz.constructor(@xsize,@ysize, v)
      
     elsif((object.is_a?(Matriz)==true) && (@ysize == object.getf()))
       v = Array.new
      for i in (0...@xsize) do
	for j in (0...@ysize) do
	  v << 0
	 for k in (0...@ysize) do
	   v[(v.size)-1] = (v.last + (self[i,k] * object[k,j]))
	end
      end 
      end
      return Matriz.constructor(@xsize,object.getc, v)
      
      
    end
end

  def max
    
    aux = 0
    for i in (0...@xsize) do
	for j in (0...@ysize) do
	  if (self[i, j] > aux)
	      aux = self[i, j]
	  end
	end
      end
    aux
  end

  def min
    
    aux = 100
    for i in (0...@xsize) do
	for j in (0...@ysize) do
	  if (self[i, j] < aux)
	      aux = self[i, j]
	  end
	end
      end
    aux
  end









end