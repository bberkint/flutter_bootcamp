import 'package:dart_dersleri/object_oriented_programming/override_kullanimi/hayvan.dart';
import 'package:dart_dersleri/object_oriented_programming/override_kullanimi/kedi.dart';
import 'package:dart_dersleri/object_oriented_programming/override_kullanimi/kopek.dart';
import 'package:dart_dersleri/object_oriented_programming/override_kullanimi/memeli.dart';

void main(List<String> args) {
  var hayvan = Hayvan();
  var memeli = Memeli();
  var kedi = Kedi();
  var kopek = Kopek();

  hayvan.sesCikar();
  memeli.sesCikar();
  kedi.sesCikar();
  kopek.sesCikar();
}
