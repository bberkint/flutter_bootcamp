import 'package:dart_dersleri/object_oriented_programming/kalitim/Ev.dart';

class Saray extends Ev {
  int kuleSayisi;
  Saray({required this.kuleSayisi, required int pencereSayisi})
      : super(pencereSayisi: pencereSayisi);
}
