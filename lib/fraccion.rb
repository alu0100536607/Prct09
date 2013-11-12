class Racional
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

  def ==(a)
    aux = 0
    if ((@num == a.num) && (@den == a.den)) then
      aux = 1
    end
    aux
  end
  
  def +(a)
    b = Racional.new(0,0)
    b.setden(mcm(@den,a.getden))
    b.setnum((b.getden/@den * @num)  + (b.getden/a.getden * a.getnum))
    b
  end
  
  def -(a)
    b = Racional.new(0,0)
    b.setden(mcm(@den,a.getden))
    b.setnum((b.getden/@den * @num ) - (b.getden/a.getden * a.getnum))
    b
  end
  
  def *(a)
    b = Racional.new(0,0)
    b.setnum(@num * a.getnum)
    b.setden(@den * a.getden)
    b
  end
  
  def /(a)
    b = Racional.new(0,0)
    b.setnum(@num * a.getden)
    b.setden(@den * a.getnum)
    b
  end
  
  def <(a)
    aux = 0
    if (@decimal < a.decimal) then
        aux = 1
      end
      aux
   end

   def >(a)
    aux = 0
    if (@decimal > a.decimal) then
        aux = 1
      end
      aux
   end
   
     def <=(a)
    aux = 0
    if (@decimal <= a.decimal) then
        aux = 1
      end
      aux
   end
   
     def >= (a)
    aux = 0
    if (@decimal >= a.decimal) then
        aux = 1
      end
      aux
   end
   
end 
