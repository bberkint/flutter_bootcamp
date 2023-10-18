import 'package:dart_dersleri/object_oriented_programming/interface/my_interface.dart';

class ClassA implements MyInterface {
  @override
  int degisken = 10;

  @override
  void metod1() {
    print("Metod 1 çalıştı");
  }

  @override
  String metod2() {
    return "Metod 2 çalıştı";
  }
}
