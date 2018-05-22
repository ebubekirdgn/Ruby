#!/usr/bin/ruby
# encoding: utf-8

class Truck
  attr_reader :tip, :il , :fiyat

  def initialize(tip, il, fiyat)
     @tip, @il = tip,il
    @fiyat = fiyat

  end

  def indirim(x)
  fiyat - (fiyat*x/100)
  end
  def zam(x)
    fiyat + (fiyat*x/100)
  end

  def to_s
    "(#{self.tipi},#{self.il},#{self.fiyat})"
  end
end

def main
  n1 = Truck.new "Taksi", "Samsun", 20000
  n2 = Truck.new "Kamyonet", "Istanbul", 800

  if n1.fiyat != n2.fiyat
    puts  "Iki arac�n fiyatlar� e�it degil"
    if n2.fiyat > n1.fiyat
      print "Iki arac�n fiyatlarindan ",n1.il ,"'daki " ,n1.tip ,"digerine gore daha pahali degil\n"
      print "Iki arac�n fiyatlarindan ",n1.il ,"'daki " ,n1.tip ,"digerine gore daha ucuz\n"
      print "Iki arac�n fiyatlarindan ",n1.il ,"'daki " ,n1.tip ,"indirimli fiyati : " ,  n1.indirim(50) ,"\n"
      print "Iki arac�n fiyatlarindan ",n1.il ,"'daki " ,n1.tip ,"zamli fiyati : " ,  n1.zam(50)*n1.fiyat,"\n"


    else
      print "Iki arac�n fiyatlarindan ",n2.il ,"'daki " ,n2.tip ,"digerine gore daha pahali degil\n"
      print "Iki arac�n fiyatlarindan ",n2.il ,"'daki " ,n2.tip ,"digerine gore daha ucuz\n"
      print "Iki arac�n fiyatlarindan ",n2.il ,"'daki " ,n2.tip ," indirimli fiyati : " , n2.indirim(50),"\n"
      print "Iki arac�n fiyatlarindan ",n2.il,"'daki "  ,n2.tip ,"fiyati : " ,  n2.zam(50),"\n"
    end
  end


end

main if __FILE__ == $PROGRAM_NAME