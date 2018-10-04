# Sik kullanilan sayi methodlari

# Mutlak Deger Alma Methodlaru
puts -5.abs # mutlak degerini alir
puts -5.magnitude # ayni sekilde mutlak degerini alir

# Sayi yuvalarma methodlari
puts 5.1.ceil # en yakin ust sayiya yuvarlar sonuc: 6
puts -5.1.ceil # sonuc: -5

puts 5.9.floor # en yakin alt sayiya yuvarlar sonuc: 5
puts 5.9.truncate # ondalik kisim varsa kesip atar sonuc: 5

puts 3.14159.round # sayinin son basamagina bakar 5 ve daha yukari degilsa asagi yuvarlar sonuc : 3
puts 3.14159.round(3) # yuvarlamak yerine parametre alirsa okadar basamak alir sonuc : 3.142

# Sayi Turunu Kontrol etme
puts 3.15.integer? # tam sayi olup olmadigini kontrol eder
puts 3.integer? # true doner

puts 3.14.is_a? Float # is_a? dan sonra turunu yazip kontrol ettirebiliriz
puts 544.54.is_a? Complex #false doner

puts 2.54.kind_of? Integer # kind_of? methodu is_a? methodu gibi calisir false doner
puts 65.2.kind_of? Float # true doner

# Tek veya Cift Oldugunu Kontrol Etme
puts 14.even? # even methodu nesne cift sayi ise true, degilse false dondurur.
puts 5.even? # false doner