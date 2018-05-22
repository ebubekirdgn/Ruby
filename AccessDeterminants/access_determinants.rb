class AccessDeterminants
  #Rubyde methodlar default olarak public gelmekte.
  #Private yapmak istektediklerimize private yazıyoruz ve onun altındakiler hep private olur.
  #Aynı şekil diğer erişim belirleyiciler içinde geçerlidir. Public ,protected vs....
  @@total_porduct =0
  #çift @ işareti varsa sayet bu sınıfın değişkenidir.
  attr_accessor :name ,:price  #bu ise hem reader hemde writer görevi görür.
  def initialize(name,price)
    @@total_porduct +=1
    @name = name
    @price=price
  end
 public
  #attr_reader :name ,:price   #getter ve setter işlemlerine ihtiyaç duymadan kod kalabalıgı yapmadan optimize bir şekilde ekrana yazdırır.
  #attr_writer :name ,:price
  def self.total_porduct
    @@total_porduct
  end

  private

  def price_in_Tl
    Float(@price)/100
  end

  def to_s
    "Name :#{@name} , Price in cent: #{@price}"
  end



end