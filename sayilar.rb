sayi = 2**30-1
puts sayi.class
puts sayi.size # bellekte kac byte lik yer kapladigini verir

tutar = 1399.1 # para cinsinden
puts tutar.class # Float

# Rasyonel Sayilar
puts Rational(1) # 1/1
puts Rational(20/5) # 4/1
puts Rational(3,5) # 3/5

# Tip donusumleri

puts "142".to_f.class # float
puts "142".to_s.class # string
puts "142".to_i.class # integer

# Bazi operatorler

puts 14.0/2 # bolme
puts 14.div(2) # div boler
puts 15.div(2) # div boler ondalik kisma bakmaz
puts 15.fdiv(2) # fdiv boler ondalik kisma dikkat eder

puts 2**3 # us alir 2 ussu 3

print 19.divmod(4.5) # bolum ve kalani dizi dondurur
puts ""
puts 19.quo(4.5) # bolumu verir
puts "Kalan: #{19.remainder(4.5)}" # kalani verir

k = 5
puts k
puts k+=5
puts k-=4
puts k*=4
puts k%=5
a, b, c = 1, 2, 3 #paralel atama
puts a
puts b 
puts c