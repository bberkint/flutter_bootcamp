import 'package:dart_dersleri/object_oriented_programming/fonksiyonlar.dart';

void main(List<String> args) {
  var f = Fonksiyonlar();
  f.selamlar();

  String gelenSelam2 = f.selamlar2();
  print("Gelen 2. sonuç : $gelenSelam2");

  f.selamlar3("Ahmet");

  int gelenToplam = f.toplama(12, 20);
  print(gelenToplam);
}
