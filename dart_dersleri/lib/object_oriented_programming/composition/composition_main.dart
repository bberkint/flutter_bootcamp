import 'package:dart_dersleri/object_oriented_programming/composition/filmler.dart';
import 'package:dart_dersleri/object_oriented_programming/composition/kategoriler.dart';
import 'package:dart_dersleri/object_oriented_programming/composition/yonetmenler.dart';

void main(List<String> args) {
  var k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram");
  var k2 = Kategoriler(kategori_id: 2, kategori_ad: "Bilim Kurgu");

  var y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino");
  var y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan");

  var f1 = Filmler(
      film_adi: "Django",
      film_id: 1,
      film_yil: 2013,
      kategori: k1,
      yonetmen: y1);

  print("Film Id       : ${f1.film_id}");
  print("Film Ad       : ${f1.film_adi}");
  print("Film Yıl      : ${f1.film_yil}");
  print("Film Kategori : ${f1.kategori.kategori_ad}");
  print("Film Yönetmen : ${f1.yonetmen.yonetmen_ad}");
}
