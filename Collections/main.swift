//
//  main.swift
//  Collections
//
//  Created by Vural Kayra Çetintaş on 21.10.2022.
//

import Foundation


 var bosListe = [String]() // Boş olduğu için boş liste yazılır
 var nilListe : [String]?
 
 print(bosListe)
 
 var sehirler = ["istanbul","ankara"]
 
 print(sehirler)
 
 var ilkSehir = sehirler[0]
 var ikinciSehir = sehirler[1]
 print(ilkSehir,ikinciSehir)
 sehirler [0] = "Kocaeli"
 print(sehirler)
 
 // var i = sehirler[3] // böyle bir index olmadığı için hata verir
 
 
 sehirler.append("İzmir") // append fonksiyonuyla listenin en sonuna eleman ekler
 print(sehirler)
 
 sehirler.remove(at: 0) // remove ile girdiğimiz indexteki elamanı sileriz
 print(sehirler)
 
 
 // Filtreleme
 
 var sayilar = [1,2,3,4,5,6]
 var filtreleme = sayilar.filter { $0 < 4} // listenin bütün elemanları teker teker kontrol eder 4 ten küçük olanları yeni listeye yazdırır , birden fazla da kriter eklenebilir
 var filtreleme2 = sayilar.filter{$0>2 && $0<5} // liste içindeki 2 den büyük 5 ten küçük elemanları yeni liste içine ekledi
 print(sayilar)
 print(filtreleme)
 print(filtreleme2)
 
 
 
 // Elimizdeki meyveler listesinin tüm elemanlarının teker teker ekrana yazdırılması
 // Adı yazılan meyvenin index değerinin ekrana yazdırılması
 
 var meyveler = ["Elma","Armut","Portakal"]
 var istenen = "Armut"
 
 for index in 0..<meyveler.count // meylerin uzunluğu kadar yazdırcak
 {
 // print("\(index) : \(meyveler[index])")
 if meyveler[index] == istenen{
 print(index)
 }
 }
 
 // bu işlemi farklı şekilde yapabiliriz
 
 
 for meyve in meyveler {
 if meyve == istenen{
 print("istenen meyve " + meyve)
 }
 }
 
  
 
 //Set
 // Set index yapısı bulunmaz içine konulan değerler index içermez index olarak kullanamayız sadece değerler tutulur, elimizdeki yapıda sadece 1 olduğundan emin olduğumuzda set kullanabilir örneğin şehirler listesinde istanbul varsa sonradan tekrar istanbul yazdığımızda listelerde 2 istanbul olur ama setlerde üstüne yazar tek istanbul değeri olur
 
 var harfler = Set<Character>()
 harfler.insert("a")
 harfler.insert("b") // listelerde sonradan eklenen karakterler listenin sonuna eklenir,set'te karışık olarak eklenir.
 print(harfler)
 
 harfler = [] // boş bir liste oluşturarak boşaltabiliriz veya
 harfler.removeAll() // ile de harflerin için boş hale getirilir
 
 
 var meyveler1 : Set<String> = ["Elma","Armut","Muz"] // Kullanım 1
 var meyveler2 : Set = ["Elma","Armut"] // Kullanım 2
 print(meyveler1)

 
meyveler1.remove("Armut") // eleman silmek için
 print(meyveler)
 print(meyveler.contains("Elma")) // Liste içinde elma var mı diye kontrol ediyoruz bool değer döndürür
meyveler1.insert("Ayva")
meyveler1.insert("Muz")
meyveler1.insert("Cilek")
meyveler1.insert("Limon")
 
 var sirali = meyveler.sorted() // meyveleri sıralar
 print(sirali)
 
   
 //Dictionary
 // Sözlüklerin yapısını benzerler , yapısında bir kelime vardır ve bu kelimenin karşısında bir açıklama vardır açıklamaya ulaşmak için de kelime üzerinden gideriz , key value
 
 var dic : [String : String]?
 print(dic)
 
 var dic2 = [String:String]()
 print(dic2)
 
 var dic3 = [
 "d1" : "Değer 1",
 "d2" : "Değer 2",
 ]
 print(dic3)
 var d1 = dic3["d1"]
 print(d1) // dic te optional tip vermesen bile optional döner sebebi ise index olmadığından key value olduğundan dolayı
 
 
 //dic filtreleme
 
 var sayilar1 = [
 1 : "Bir",
 2 : "iki",
 3 : "üç",
 4 : "dört"
 ]
 
sayilar1[5] = "Beş" // 5 değerini ekledi
sayilar1[4] = "aşlsd" // 4 değeri olduğu için yeni değer olarak bunu yazacak
 print(sayilar1)
 
 var filtreliSayilar = sayilar1.filter{ (k , v) -> Bool in
 return k <= 3 // 3 ten küçük sayıları filtrelemek için kullandık
 }
 print(filtreliSayilar)
 
 var grupSayilar = [
 "tekSayilar" : [1,3,4,5,9],
 "ciftSayilar" : [2,4,6,8,10]
 ]
 
 var tekSayilar = grupSayilar["tekSayilar"]
 print(tekSayilar)
 
 
 


 //Elimizde bulunan, birden fazla kişinin bilgilerinin barından bir listedeki tüm kişi bilgilerinin ekranda gösterilmesi
 
 var Kisiler = [[String:String]]()
 
 var kisi1 = [
 "Ad" : "Ahmet",
 "Soyad" : "Yılmaz"
 ]
 Kisiler.append(kisi1)
 
 var kisi2 = [
 "Ad" : "Mehmet",
 "Soyad" : "Yıldız"
 ]
 
 Kisiler.append(kisi2)
 
 for kisi in Kisiler {
 print("Ad : \(kisi["Ad"]!)")
 print("Soyad : \(kisi["Soyad"]!)")
 }
 
 
 

 // may ve compact map kullanımı
 // Map, elimizdeki liste elamanların üzerinden değişiklik yaparak yeni liste oluşturmamızı sağlar
 
 
 var sayilar2 = [1,2,3,4,5,6,7]
 var maddeBaslik = [String]()
 /*
  maddeBaslik = sayilar.map{(sayi) -> String in
  return "\(sayi) -/" // liste içindeki elemanları yazdırıp yanına -/ yazdık
  }
  */
 
 // farklı bir kullanımları vardır
 //1
 // maddeBaslik = sayilar.map{sayi in return "\(sayi)--"}
 //2
 maddeBaslik = sayilar2.map({"\($0)-/"})
 print(maddeBaslik)
 // lip uyumsuzluğu varsa
 
 let skorlar = ["1","2","üç","4"]
 
 let mapSkor : [Int?] = skorlar.map{str in Int(str)}
 print(mapSkor) // optional olarak yazdırır
 
 let compactMapSkor :[Int] = skorlar.compactMap{str in Int(str)}
 print(compactMapSkor) // liste şeklinde yazdırır boş olan dönüştürülemeyen ifadelerle ilgilenmiyorsak compactMap kullanmamız daha doğru olur
 

 //flat map ve reduce
 //flat map birden fazla kistenin tek bir listede toplanması işlemni yapar
 
 
 let sayiGruplari  = [[1,2,5,6],[7,2],[1,1,1,1]]
 
 let sayilarTekListe = sayiGruplari.flatMap({$0})
 
 print(sayilarTekListe)
 
 let kelimeListesi : [String?] = ["Kelime",nil,"3.5",nil,"kelime5"]
 let gecerliler = kelimeListesi.flatMap({$0})
 print(gecerliler) // sadece geçerli verileri yazdırır nil olanları yazdırmaz
 
 let kelimeler = ["k1","k2","k3"]
 let birlesikKelimeler = kelimeler.reduce("", +) // şu kelimeden sonra bu listenin elemanın birleştir şeklide kullanımı vardır
 print(birlesikKelimeler)
 
 
//Elimizde öğrencilerin not ortalamaları bulunmaktadır. Bu listeye göre öğrencilerin not ortalamasını alıp geçme ve kalma durumlarının kontrol edilmesi ve ekrana yazdırılması

//ilk olarak notun ortalamanın ve durunub veri tiplerini belirledik
var notlar = [[Float]]()
var ortalamalar = [Float]()
var durumlar = [String]()

//notları girdik
notlar.append([50,40,40])
notlar.append([100,100,90])
notlar.append([80,20,98])

for i in 0 ..< notlar.count{
    let ortalama = notlar[i].reduce(0){$0 + $1} / Float(notlar[i].count) // i. elemandan başlangıç değerinden  aktif olan değerden bir sonraki ifadeyi toplayacak  ve notların uzunluğu kadar bölecek Float dönüşümü yaptık
    ortalamalar.append(ortalama)
}

durumlar = ortalamalar.map({
    if $0 < 50{
        return "Kaldı"
    }
    else{
        return "Geçti"
    }
        
})

print("Ortalamalar : \(ortalamalar)")
print("Durumlar : \(durumlar)")


   /*
var liste  = [4,2,5,2,4,12]
liste.sort()
liste.reverse() //bak
print(liste)
 var list = [1,2,3,4]
 print(list)

 list.append(2)
 print(list)
 var liste = [6,89,77,64,3,10]
 var liste2 = [1,2,3]
 liste.append(contentsOf: liste2)
 print(liste)
 var list = [1,2,3,4]
 print(list)

 list.append(2)
 print(list)


 var d  = ["key1" : 1, "key2" : 2]
 d["key1"] = 10
 d["key3"] = 11
 d.removeValue(forKey: "key 1")
 print(d)


 var liste = [1,2,3,4,5,3,7,6,89,77,64,3,10]
 liste.removeAll(where: {$0 < 5 || $0 >= 10})

 print(liste)
 var liste = [1,2,3]
 liste.append(10)
 liste.remove(at: 1)
 liste.append(contentsOf:[ 3, 30])
 
 let liste  = [4,2,5,2,4,12]
 var liste2  = [Int]()

 var sayac = liste2.count

 repeat {
     liste2.append(liste[sayac])
     sayac += 1
 }while (liste2.max()! < 5)

 print(liste)

 var st : Set = [3,5,6,7,6,6,6]

 st.forEach {
     print($0)
 }






var liste : [Int?] = [1,2,3,4]
liste[2] = nil
print(liste[3])

*/
