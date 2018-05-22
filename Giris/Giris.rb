
=begin
print "1 sayiyi Girin : "
first_num = gets.to_i
print "2. sayiyi Girin : "
second_num = gets.to_i
puts first_num.to_s + " + " + second_num.to_s + " = " + (first_num + second_num ).to_s
=end

# =begin =end yorum satiri başlangıc ve bitişini verir bize.

# Another Example

 num_one = 1.000000
 num_two =0.999999

 puts num_one.to_s + " - " + num_two.to_s + " = " + (num_one - num_two).to_s

# 2. Example

puts "ebubekir".class
puts 1.234.class

# 3.Example



age =12

if(age >=4 ) && (age <=6)
   puts "You are in kindergarten"
elsif
  puts "You're in Middle School"
  put "Yeah"
else "Stay Home"
end

# 4. Example Logical Operator
puts "true && false = " + (true && false).to_s
puts "true || false = " + (true || false).to_s
puts "!false = " + (!false).to_s

=begin
 Note  :
  a<=> b
if a < b then return -1
if a = b then return  0
if a > b then return  1
if a and b are not comparable then return nil

=end
# Example :
   puts "5 <=> 10 = " + (5<=>10).to_s

# 5. Example
=begin
print "Selam Yazısı giriniz"

selam = gets.chomp

case selam
  when "Fransizca" ,"fransizca"
    puts "Bonjour"
  when "Ispanyolca" ,"ispanyolca"
    puts "Hola"
    exit
  else
    put "Hello"
end
=end

# 6. Example

x =12

puts (x <= 50 ? "Yasli" : "Genc")

# 7. Example  Loop

# Ekrana 2 - 4 - 6 - 8 - 10 basar

x=1
loop do
  x +=1
   next unless (x%2) ==0
      puts x
   break if x >=10

end


#Yukarıdaki işlemle aynı işi yapar.
y =1
 while  y<=10
   y+=1
   next unless (y%2) ==0
   puts y
   break if y >=10
 end

#Yukarıdaki işlemle aynı işi yapar.

a=1
until a>=10
  a+=1
  next unless (a%2) ==0
  puts a
  break if a >=10
end



# 8 Example  Array
numbers = [1,2,3,4,5]

toplam = 0
numbers.each {|a| toplam+=a }


sum=0
#0...5 demek sıfır dan basla 5 dahil değil işlem yap
#0..5 demek sıfır dan basla 5 dahil işlem yap

for i in 0...5
  sum += numbers[i]

end
puts "Dizinin Toplamı : #{sum}"



# 9 Example  Functions

def add_nums(num_1,num_2)
   num_1.to_i + num_2.to_i
end
#Not : Burada son satırı Ruby her zaman return olarak gördüğü için yazmadık return ifadesini.
puts add_nums(1,2)

x=1
def change(x)
  x=4
end
puts change(x)


# 10 Example functions

def sayi_ekle(s1,s2)
    s1+s2
end

puts sayi_ekle(3,4)

#11 Example Rescue

print("1.sayiyi giriniz :")
s1= gets.to_i

print("2.sayiyi giriniz :")
s2= gets.to_i

begin
 cevap = s1/s2
rescue
  puts "0'a bölme hatasi"
  exit
end
puts "#{s1} / #{s2} = #{cevap}"

#12 Example Multiline String

multiline_string = <<EOM
Bu yazı oldukca uzun bir yazıdır.
Ayrıca burada nasıl yazarsak o formatta 
karsımıza cıkarır.
Bunun yanı sıra işlemde yapabiliriz.
Mesela :  #{4+8} gibi
EOM

puts multiline_string

#13 Example
adi ="Ebubekir"
soyadi = "Dogan"

full_isim = adi + soyadi

is_ismi = "Microsoft"

full_isim = "#{adi} #{is_ismi} #{soyadi}"
puts full_isim.include?("Microsoft")
puts full_isim.size

#14 Example

adi ="ebubekir"
soyadi = "Dogan"

full_isim = adi + soyadi

is_ismi = "Microsoft"

full_isim = "#{adi} #{is_ismi} #{soyadi}"
puts full_isim.include?("Microsoft")
puts full_isim.size

puts "Sesli harfler : " + full_isim.count("aeiou").to_s
puts "Sessiz harfler : " + full_isim.count("^aeiıouö").to_s
puts full_isim.upcase
puts full_isim.downcase
puts full_isim.swapcase
