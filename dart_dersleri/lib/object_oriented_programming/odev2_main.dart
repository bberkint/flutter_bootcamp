import 'package:dart_dersleri/object_oriented_programming/odev2.dart';

void main(List<String> args) {
  var o2 = Odev2();
  double sonuc1 = o2.soru1(5.6);
  print(sonuc1);

  o2.soru2(5, 20);

  int faktoriyel = o2.soru3(6);
  print(faktoriyel);

  o2.soru4("Öğretmen");
}
