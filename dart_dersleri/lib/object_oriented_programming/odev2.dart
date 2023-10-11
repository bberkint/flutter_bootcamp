class Odev2 {
  double soru1(double km) {
    double mile = km * 0.621;
    return mile;
  }

  void soru2(int kisa, int uzun) {
    int alan = kisa * uzun;
    print(
        "Kısa kenarı $kisa, uzun kenarı $uzun birim olan dikörtgenin alanı : $alan");
  }

  int soru3(int sayi) {
    int faktoriyel = 1;
    for (var i = sayi; i >= 1; i--) {
      faktoriyel = faktoriyel * i;
    }

    return faktoriyel;
  }

  void soru4(String kelime) {
    int eHarfiAdeti = 0;
    for (int i = 0; i < kelime.length; i++) {
      if (kelime[i] == 'e' || kelime[i] == 'E') {
        eHarfiAdeti++;
      }
    }
    print("Kelimenin içinde $eHarfiAdeti adet 'e' harfi bulunuyor.");
  }
}
