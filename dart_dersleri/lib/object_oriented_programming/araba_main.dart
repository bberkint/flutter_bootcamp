import 'package:dart_dersleri/object_oriented_programming/araba.dart';

void main(List<String> args) {
  // Nesne oluşturma,
  var bmw = Araba(renk: "Sarı", hiz: 250, calisiyorMu: true);
  bmw.bilgiAl();
  // Değer atama
  bmw.hiz = 330;
  bmw.renk = "Kırmızı";
  bmw.calisiyorMu = false;

  bmw.calistir();
  bmw.hizlan(52);
  bmw.bilgiAl();

  var ford = Araba(renk: "Mor", hiz: 220, calisiyorMu: true);
  ford.yavasla(18);
  ford.bilgiAl();

  ford.renk = "Kahverengi";
  ford.hiz = 180;
  ford.calisiyorMu = false;

  ford.durdur();
  ford.bilgiAl();
}
