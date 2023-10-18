import 'package:dart_dersleri/object_oriented_programming/kalitim/Ev.dart';

class Villa extends Ev {
  bool garajVarMi;
  Villa({required this.garajVarMi, required int pencereSayisi})
      : super(pencereSayisi: pencereSayisi);
}
