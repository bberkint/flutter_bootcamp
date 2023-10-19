import 'dart:collection';

void main(List<String> args) {
  // Tanımlama
  var plakalar = HashSet.from([16, 29, 34]);
  var meyveler = HashSet<String>();
  meyveler.add("Kiraz");
  meyveler.add("Portakal");
  meyveler.add("Muz"); // Örneğin aynı meyveyi ekleyemeyiz.
  print(meyveler);

  String meyve = meyveler.elementAt(2);
  print(meyve);

  print("Boyut : ${meyveler.length}");

  for (var meyve in meyveler) {
    print("Sonuç : $meyve");
  }

  for (var i = 0; i < meyveler.length; i++) {
    print("$i.   ->  ${meyveler.elementAt(i)}");
  }

  meyveler.remove("Kiraz");
  meyveler.clear();
  print(meyveler);
}
