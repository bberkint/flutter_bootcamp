void main(List<String> args) {
  // Tanımlama

  var plakalar = [29, 34, 78]; // indeks olarak 0 , 1 , 2 ..
  var meyveler = <String>[];

  // veri ekleme
  meyveler.add("Muz"); // 0. indekse muz geldi
  meyveler.add("Elma");
  meyveler.add("Kiraz");
  print(meyveler);

  // güncelleme
  meyveler[1] = "Yeni Elma";
  print(meyveler);

  // insert
  meyveler.insert(1, "Portakal");
  print(meyveler);

  // veri okuma
  String meyve = meyveler[2];
  print(meyve);

  print("Boyut : ${meyveler.length}");
  print("Boş Kontrol : ${meyveler.isEmpty}");
  print("Boş Kontrol : ${meyveler.isNotEmpty}");

  // Foreach
  for (var meyve in meyveler) {
    print("Sonuç : $meyve");
  }

  for (var i = 0; i < meyveler.length; i++) {
    print("$i -> ${meyveler[i]}");
  }

  var liste = meyveler.reversed.toList();
  print(liste);
  meyveler.sort();
  print(meyveler);

  meyveler.removeAt(1);
  print(meyveler);

  meyveler.clear();
  print(meyveler);
}
