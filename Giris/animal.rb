class Animal

  def initialize
     puts "Yeni bir hayvan olustu"
  end

  def set_name(new_name)
    @name = new_name
  end

  def get_name
    @name
  end

  def name
    @name
  end

  def name=(new_name)
   if new_name.is_a?(Numeric)
     puts "İsim numaralı olamaz"
   else
    @name = new_name
   end
 end
end

cat = Animal.new
cat.set_name("Poncik")
puts cat.get_name
puts cat.name

cat.name="Sophie"
puts cat.name

class Dog
  #attr_accessor :name,:height,:weight
  #attr_writer   :name,:height,:weight
  #bunların yerine sadece accessor kullanabiliriz.Bu hem okuma hem yazmamızı sağlar.

   attr_accessor :name,:height,:weight

  def havlama
    puts "Havlar."
  end
end

kopek = Dog.new
kopek.name = "Sevimsiz"
puts kopek.name

