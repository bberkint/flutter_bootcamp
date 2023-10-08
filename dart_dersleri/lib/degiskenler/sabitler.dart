void main(List<String> args) {
  // sabitler
  // final , const

  int sayi = 30;
  print(sayi);
  sayi = 100;
  print(sayi);

  // Kodlamayı çalıştırdığımızda hafızada oluşur
  final int numara = 200; // daha sonra numaraya başka değer aktaramayız.
  print(numara);

  // Değişkeni tanımladığımızda hafızada oluşur
  // Görsel nesnelerde kullanılır. Button, Text vb.
  const int sonuc = 500; // daha sonra sonuca başka değer aktaramayız
  print(sonuc);
}
