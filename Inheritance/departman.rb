class Departman
  def initialize(departmanAdi) #yapıcı metotuna parametre aldık
    @departmanAdi=departmanAdi  #@ ile tanımlanan sınıfın nesnesi @ 'siz tanımlanan ise methodun parametresi
  end

  def DepartmanCalisanSayisi(sayi) #departmanda çalışan kişi sayısını gösteren metotu yazdık
    puts "#{@departmanAdi} departmanında #{sayi} kişi çalışmaktadır."
  end

end
# Yeni sınıfın baslangıcı aynı zamanda miras alacak sınıftır.
class Calisan<Departman #Departman sınıfını Personel sınıfına miras olarak verildi.
  def initialize(ad,soyad,departman)#yapıcı metotumuz 3 adet parametre aldı
    super(departman)#departman parametresinni super metot yardımı ile Departman sınıfının yapıcı metotuna gönderidk
    @ad,@soyad,@departman=ad,soyad,departman#parametreleri örnek değişkenlerine atadık
  end
  def Yaz#ekrana yazdırma işlemi y paan kmetotu yazdık
    puts "Merhaba #{@ad} #{@soyad} Deparmtanınız #{@departmanAdi}"

  end
end

personel=Calisan.new("Ebubekir","Doğan","Software Engineer")
personel.Yaz
personel.DepartmanCalisanSayisi(3)
#Kalıtım yaptığımız için Departman sınıfnın DepartmanPersonelSayisi metotuna da ulaşabildik.