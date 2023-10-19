import 'package:dart_dersleri/collections/ogrenciler.dart';

void main(List<String> args) {
  var o1 = Ogrenciler(no: 500, ad: "Berkin", sinif: "12B");
  var o2 = Ogrenciler(no: 300, ad: "Ayşe", sinif: "12C");
  var o3 = Ogrenciler(no: 400, ad: "Sergen", sinif: "12A");

  var ogrencilerListesi = <Ogrenciler>[];
  ogrencilerListesi.add(o1);
  ogrencilerListesi.add(o2);
  ogrencilerListesi.add(o3);

  for (var o in ogrencilerListesi) {
    print(
        "No     :   ${o.no}    -      Ad    : ${o.ad}   -   Sınıf : ${o.sinif}");
  }

  // Sorting
  print("------------------- Sayısal Küçükten Büyüğe -------------------");
  Comparator<Ogrenciler> s1 = (x, y) => x.no.compareTo(y.no);
  ogrencilerListesi.sort(s1);
  for (var o in ogrencilerListesi) {
    print(
        "No     :   ${o.no}    -      Ad    : ${o.ad}   -   Sınıf : ${o.sinif}");
  }

  print("------------------- Sayısal Büyükten Küçüğe -------------------");
  Comparator<Ogrenciler> s2 = (x, y) => y.no.compareTo(x.no);
  ogrencilerListesi.sort(s2);
  for (var o in ogrencilerListesi) {
    print(
        "No     :   ${o.no}    -      Ad    : ${o.ad}   -   Sınıf : ${o.sinif}");
  }

  print("------------------- Metinsel Küçükten Büyüğe -------------------");
  Comparator<Ogrenciler> s3 = (x, y) => x.ad.compareTo(y.ad);
  ogrencilerListesi.sort(s3);
  for (var o in ogrencilerListesi) {
    print(
        "No     :   ${o.no}    -      Ad    : ${o.ad}   -   Sınıf : ${o.sinif}");
  }

  print("------------------- Metinsel Büyükten Küçüğe -------------------");
  Comparator<Ogrenciler> s4 = (x, y) => y.ad.compareTo(x.ad);
  ogrencilerListesi.sort(s4);
  for (var o in ogrencilerListesi) {
    print(
        "No     :   ${o.no}    -      Ad    : ${o.ad}   -   Sınıf : ${o.sinif}");
  }
}
