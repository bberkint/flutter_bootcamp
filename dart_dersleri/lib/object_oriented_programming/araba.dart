class Araba {
  String renk;
  int hiz;
  bool calisiyorMu;

  //Contstructor
  Araba({required this.renk, required this.hiz, required this.calisiyorMu});

  void calistir() {
    // side effect : yan etki yani değeri değiştiriyor.
    calisiyorMu = true;
    hiz = 5;
  }

  void durdur() {
    calisiyorMu = false;
    hiz = 0;
  }

  void hizlan(int kacKm) {
    hiz += kacKm;
  }

  void yavasla(int kacKm) {
    hiz -= kacKm;
  }

  void bilgiAl() {
    print("------------------------");
    print("Renk             : ${renk}");
    print("Hız              : ${hiz}");
    print("Çalışıyor mu     : ${calisiyorMu}");
  }
}
