class Product 
   def initialize(name,price)
	@name = name
	@price=price
   end
	
 	def name
		return @name
	end

	def price
		return @price
	end

	def name=name
		 @name = name
	end

	def price=price
		@price = price
	end

   def to_s
	 "Name #{@name} , Price in cent: #{@price}"
   end
end


 pencil = Product.new('Lead Pencil',10)
 puts pencil   
 puts pencil.name   
 puts pencil.price   
 pencil.price =1100
 puts pencil.price   

 book= Product.new('Graph Book',10)
 puts book.name   
 puts book.price   
######################################################## Daha gelişmiş hali ####################################################


class Product 
   def initialize(name,price)
		@name = name
		@price=price
   end

	  attr_reader :name ,:price   #getter ve setter işlemlerine ihtiyaç duymadan kod kalabalıgı yapmadan optimize bir şekilde ekrana yazdırır.
	  attr_writer :name ,:price
		attr_accessor :name ,:price  #bu ise hem reader hemde writer görevi görür.

	def price=price
		@price = price
	end

   def to_s
	 "Name #{@name} , Price in cent: #{@price}"
   end
end


 pencil = Product.new('Lead Pencil',10)
 puts pencil   
 puts pencil.name   
 puts pencil.price   
 pencil.price =1100
 puts pencil.price   

 book= Product.new('Graph Book',10)
 puts book.name   
 puts book.price   
###############################################
class Product
 @@total_porduct =0
 #çift @ işareti varsa sayet bu sınıfın değişkenidir.
	 attr_accessor :name ,:price  #bu ise hem reader hemde writer görevi görür.
		 def initialize(name,price)
			 @@total_porduct +=1
			 @name = name
			@price=price
		 end

			#attr_reader :name ,:price   #getter ve setter işlemlerine ihtiyaç duymadan kod kalabalıgı yapmadan optimize bir şekilde ekrana yazdırır.
			#attr_writer :name ,:price
    def self.total_porduct
			@@total_porduct
		end

		 def price_in_Tl
			 Float(@price)/100
		 end

		 def to_s
		 "Name :#{@name} , Price in cent: #{@price}"
		 end
end


pencil = Product.new('Lead Pencil',10)
 puts pencil

puts Product.total_porduct # 1 gelir .

book = Product.new('Graph Pencil',10)
puts book
puts Product.total_porduct # 2 gelir . çunku yukarıdanda bir toplam gelir +1
