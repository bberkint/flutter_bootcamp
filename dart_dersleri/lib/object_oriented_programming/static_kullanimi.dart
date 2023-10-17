import 'package:dart_dersleri/object_oriented_programming/a_sinif.dart';

void main(List<String> args) {
  var a = ASinifi();

  // Standart kullanımı
  //print(a.degisken);
  //a.metod();

  // Sanal Nesne - isimsiz nesne
  //print(ASinifi().degisken); // 1. nesne
  //ASinifi().metod(); // 2. nesne

  // Static kullanımı
  print(ASinifi.degisken);
  ASinifi.metod();
}
