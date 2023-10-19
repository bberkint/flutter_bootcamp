import 'dart:collection';

void main(List<String> args) {
  // Tanımlama
  var sayilar = {"Bir ": 1, "İki": 2};
  var iller = HashMap<int, String>();
  iller[16] = "Bursa";
  iller[34] = "İstanbul";
  print(iller);

  // Güncelleme
  iller[16] = "Yeni Bursa";
  print(iller);

  String il = iller[34]!;
  print(il);

  print("Boyut         : ${iller.length}");
  print("Boş Kontrol   : ${iller.isEmpty}");

  var anahtarlar = iller.keys;
  for (var a in anahtarlar) {
    print("$a  ->  ${iller[a]}");
  }

  iller.remove(16);
  print(iller);
}
