#encoding: UTF-8
require "unicode_utils/upcase"
require "unicode_utils/downcase"

# Tirnak isaretleri kullanarak metin olusturma
tek_tirnak = 'bu bir metin ifadesi'
puts tek_tirnak
cift_tirnak = "bu da bir metin ifades"
puts cift_tirnak

# metinlerin icerisine kod parcaciklarinin gomulmesi
# method 1
favori_dil = 'Ruby'
mesaj = 'En sevdigim dil, '+favori_dil+' dilidir.'
puts mesaj

# method 2
favori_dil = 'Ruby'
mesaj = "En sevdigim dil, #{favori_dil} dilidir." #cift tirnak kullanma sarti vardir
puts mesaj

# #{} karakterlerinin arasina her turlu kod parcasini yazabiliriz
puts "2*15+368/2 = #{2*15+368/2}" #cift tirnak olmak zorunda

# dilersek bu karakterler arasinda sinif dahi olusturabiliriz

puts "Yeni bir kisi nesnesi olusturuldu. Nesne Kimligi = \
#{
	class Kisi
		attr_reader :ad, :yas
		def initialize ad, yas
			@ad = ad
			@yas = yas
		end
	end
	Kisi.new("Ali",25)
}"

# Kullanici Tanimli Metin Sinirlayici Kullanarak Metin Tanimlama
# buyuk Q citf tirnagi kucuk q tek tirnagi temsil eder
ad = 'Ruby'
k = %Q{Merhaba, #{ad}} # cift tirnak
puts k
k = %q{Merhaba, #{ad}} # tek tirnak
puts k
# **NOT %Q ve %q karakterlerinden hemen sonra bosluk birakilmadan sinirlayici karakter girilmelidir.
# **NOT metin sinirlayici karakter olarak sadece suslu {} paranter kullanma
# zorunlulugu yoktur. Bu karakterin harf olmamasi gerek ve %Q[metin] %q<metin> %q(metin) gibi

#HereDoc kullanimi
hd = <<SINIRLAYICI
		Heredoc yazimi kullanilarak
		cok satilir metinler olusturabiliriz.
		Satilarin içerisinde ' " karakterlerini rahatlikla kullanabiliriz.
SINIRLAYICI
#sifir bosluk olmali
puts hd
puts hd.inspect # metnı detalı olarak inceleyebiliriz 


## Metin Methodlari (Fonksiyonlari)
# metinlerin toplam uzunlugunu (toplam karakter sayisi) ogrenmek icin length ve size metodlarini kullanabiliriz
str = "bu bir test metindir"
 puts str.length #24
 puts str.size   #24
 # berlirli karakter sayilarini hesaplama

 puts str.count "e" #metindeki e leri sayar
 puts str.count "te" # t ve e karakterlerinden kac tane oldugunu dondurur
 puts str.count "te", "tr" #kesisim olan t harfini sayar
 puts str.count "test", "^e" #t e s harflerinden e yi cikarip t ve s karakter sayisini verir
 puts str.count "tm-r" # t den ve m n o p r hafrlerinden kac tane oldugunu sayar

# Karater ve Metin parcalarina erisim

# bir merindeki bir harfe erismek icin indeks metodunu kullaniriz dizilerdeki gibi
ad = "Kemal AKIN"
puts ad[1] # metnin ikinci harfini verir
puts "Son Harf.: #{ad[ad.length - 1]}" #son harfi verir
puts "Son Harf.: #{ad[-1]}" #son harfi verir
puts ad[4] == ad[-6] #- den indeks erisim kontrolu
puts ad[3,5] #4. ve altinci karakterler arasinda kalan ifadeyi verir

puts ad["Kemal"] #metinde arama yapabiliriz

#ornek
kanlar = "0Rh+ 0Rh- ARh+ ABRh- BRh-"
aranan = "0Rh-"
puts "Aranan kan bulundu!" if kanlar[aranan] #aranan kan kanlar icinde varda puts methodu calisacaktir

#ayni islemi include? metodunu kullanarakta yapabiliriz
puts "Aranan kan bulundu!" if kanlar.include?(aranan) 

# metinleri birlestirme
adi = 'Kemal'
soyadi = 'AKIN'
puts adi +" "+ soyadi # Kemal AKIN
puts adi << " " << soyadi #Kemal AKIN birlestirir
#adi << soyadi
puts adi # Kemal AKIN

# concat methodu (metinleri birlestirir en bastaki degiskene tumu sirasiyla atanir)
a = "Merhaba, "
b = "nasilsin, "
c = "iyi misin?"
a.concat(b).concat(c)
puts a # Merhaba, nasilsin, iyi misin?
puts b # nasilsin,
puts c # iyi misin?

cumle = "bu cumle kucuk haRfler kullanilarak yazılmıştır."
puts cumle.upcase # tum karakterleri buyuk harf yapar
puts cumle # upcase tek basina sadece buyuk harfe cevirir degiskeni degistirmez!
puts cumle.upcase! # tum karakterle buyuk harfle yazar ve k olarak bang! metodu kullanildigindan degiskenin icerigide degisir/


#puts "".methods

puts cumle.downcase # tum karakterleri kucuk harfe cevirir
puts cumle
puts cumle.downcase! # karakterler artik degiskendede degismistir

metin = "mERhAbA"
puts metin.swapcase #buyuk hatfler kucuk, kucuk harfler buyuk olur

puts cumle.capitalize # sadece ilk harfi buyuk yapar. Tek kelime ve tek cumleler icin uygundur.

####### METHODLARIN harf donusumunde karakter sorununu cozebilmek icin unicode_utils gemini kurmamiz gerekir/
# Turkce karakter sorununu cozebilmek icin unicode utils gemini kullandik
cumle = "bu cümle küçük harfler kullanılarak yazılmıştır."
puts UnicodeUtils.upcase(cumle, :tr) # tum karakterleri buyuk harf yapar
puts cumle # upcase tek basina sadece buyuk harfe cevirir degiskeni degistirmez!
puts UnicodeUtils.upcase(cumle, :tr) # tum karakterle buyuk harfle yazar ve k olarak bang! metodu kullanildigindan degiskenin icerigide degisir/


#puts "".methods

puts puts UnicodeUtils.downcase(cumle, :tr) # tum karakterleri kucuk harfe cevirir
puts cumle
puts UnicodeUtils.downcase(cumle, :tr) # karakterler artik degiskendede degismistir

cumle = "          bu cümle küçük harfler kullanılarak yazılmıştır.          "
puts cumle.strip # soldaki ve sagdaki alfabe disi karakterleri temizler lstrio (sol) ve rstrip(sag) olarakta kullanilabilir
k = 5
puts k.class
puts k.to_s #metne donusturur
puts cumle.class


#Metinleri Diziye Donusturme
metin = "Elma Armut Kiraz Karpuz"
puts metin.split # parametresiz direkt olarak bosluklari referans alarak diziye donusturur.
metin = "Elma*Armut*Kiraz*Karpuz" 
puts metin.split('*') # bosluk harici baska bir karakter ayirici olarak referans almak istersek

# diziyi metine donusturmek
metin = "Kemal*AKIN*PAU"
dizi = metin.split('*') # dizi haline getirdik
puts dizi
metin = dizi.join(' ')
puts metin

puts metin.respond_to?(:join) #join metodu array sinifinda tanimlidir o yuzden string sinifinda kullanilamaz metodu kullanip kullanamayacagimizi respond_to? metoduyla ogrenebiliriz bu method sorgusunda false donmektedir.


# netgsm
require "date"
puts startdate = DateTime.now.strftime("%d.%m.%Y %H:%M")
puts stopdate = (DateTime.now+1).strftime('%d.%m.%Y%H:%M')

puts startdate.gsub(/[.: ]/, '') 
puts stopdate.gsub(/[.: ]/, '') 
# netgsm end

