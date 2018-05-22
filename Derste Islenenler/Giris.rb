#!/usr/bin/ruby
# encoding: utf-8

class Point
  def initialize(x, y)
    @x, @y = x, y
    #@ işareti Ruby'de Nitelik belirtir.Noktanın sağında asla olamaz.
  end

  # FIXME Her nitelik için böyle okuyucu mu yazacağız? Tabi bu külfetli iş bir sonraki programlarda düzelteceğiz bunu
  def x
    @x
  end

  def y
    @y
  end

  def isright(diger)
    @x > diger.x
  end

  def isleft(diger)
    @x < diger.x
  end

  def isabove(diger)
    @y > diger.y
  end

  def isbelow(diger)
    @y < diger.y
  end

  def isequal(diger)
    @x == diger.x and @y == diger.y
  end

  def move(x, y)
    @x += x
    @y += y
    # FIXME Bu metod (şu noktada) ne döner?  Zararı?
  end

  def to_s
    "(#{@x},#{@y})"
  end
end

def main
  p, q = Point.new(3, 5), Point.new(9, 7)
  puts "#{p} noktası #{q} noktasının " + (p.isleft(q) ? 'solunda' : 'sağında')
end

main if __FILE__ == $PROGRAM_NAME  #Burayı yazmazsak şayet programımız main methodunda yapılan işlemleri görmeyecetir.

#main if __FILE__ == $PROGRAM_NAME kodu
#__FILE__ sihirli bir değişkendir ve bulunduğu dosyanın ismini içerir.
# $0 ise bu programı çağıran dosyanın ismini içerir. Buradaki koşul ile "Eğer bu dosya direk çağrıldıysa .. " deniyor.
# Başka bir program burada tanımlanan sınıfı require satırı ile içerip kullanacaksa bu koşul içindeki blok çalışmayacaktır.
# Ancak ve ancak bu dosya tek başına çalıştırıldığında bu satırlar işlenecekir.
