class Racional
  attr_reader :num,:den
  def initialize(num,dem)
        @num = num
        @den = dem
  end
  
  def getnum
    @num
  end
    
  def getden
    @den
  end
  
  def setden(v)
    
    @den = v
  
  end
  
    def setnum(v)
    
    @num = v
  
  end
  
  def show
    "#{@num}/#{@den}"
  end
  def decimal
   dec = @num/@den
  end
  def mcd(a,b)
    while b != 0
        a,b = b,a%b
    end
    a
  end
  def mcm(a,b)  
                (a/mcd(a,b))*b
  end
  def simplificar
      num = @num/mcd(@num,@den)
      den = @den/mcd(@num,@den)
      @num=num
      @den=den
  end

  def ==(object)
    aux = 0
    if ((object.getnum == @num) && (object.getden == @den)) then
      aux = 1
    end
    aux
  end
  
  def +(object)
    b = Racional.new(0,0)
    b.setden(mcm(@den,object.getden))
    b.setnum((b.getden/@den * @num)  + (b.getden/object.getden * object.getnum))
    b
  end
  
  def -(object)
    b = Racional.new(0,0)
    b.setden(mcm(@den,object.getden))
    b.setnum((b.getden/@den * @num ) - (b.getden/object.getden * object.getnum))
    b
  end
  
  def *(object)
    b = Racional.new(0,0)
    b.setnum(@num * object.getnum)
    b.setden(@den * object.getden)
    b
  end
  
  def /(object)
    b = Racional.new(0,0)
    b.setnum(@num * object.getden)
    b.setden(@den * object.getnum)
    b
  end
  
  def <(object)
    aux = 0
    if (@decimal < object.decimal) then
        aux = 1
      end
      aux
   end

   def >(object)
    aux = 0
    if (@decimal > object.decimal) then
        aux = 1
      end
      aux
   end
   
     def <=(object)
    aux = 0
    if (@decimal <= object.decimal) then
        aux = 1
      end
      aux
   end
   
     def >= (object)
    aux = 0
    if (@decimal >= object.decimal) then
        aux = 1
      end
      aux
   end
   
end 
