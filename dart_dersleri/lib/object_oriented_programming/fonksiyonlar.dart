class Fonksiyonlar {
  // void : geri dönüş değeri olmayan
  void selamlar() {
    String sonuc = "Merhaba Berkin";
    print(sonuc);
  }

  //return : geri dönüş değeri olan
  String selamlar2() {
    String sonuc = "Merhaba Batın";
    return sonuc;
  }

  void selamlar3(String isim) {
    String sonuc = "Merhaba $isim";
    print(sonuc);
  }

  int toplama(int sayi1, int sayi2) {
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  // Dart dilinde overloading kavramı yoktur.
  // Overloading : Class içerisinde bir metodun adını tekrar kullanmak.
}
