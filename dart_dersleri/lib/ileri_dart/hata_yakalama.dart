void main(List<String> args) {
  // 1. Compiler error
  String x = "Hello";
  //x = 100;

  // 2. Runtime exception(error)
  var liste = <String>[];
  liste.add("A");
  liste.add("B");

  try {
    String isim = liste[9];
    print(isim);
  } catch (e) {
    print("Lisetnin boyutunu aştınız");
  }
}
