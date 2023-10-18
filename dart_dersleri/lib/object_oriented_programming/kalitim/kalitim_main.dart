import 'package:dart_dersleri/object_oriented_programming/kalitim/Ev.dart';
import 'package:dart_dersleri/object_oriented_programming/kalitim/Saray.dart';
import 'package:dart_dersleri/object_oriented_programming/kalitim/Villa.dart';

void main(List<String> args) {
  var topkapiSaray = Saray(kuleSayisi: 10, pencereSayisi: 300);
  print(topkapiSaray.kuleSayisi);
  print(topkapiSaray.pencereSayisi);

  var bogazVilla = Villa(garajVarMi: true, pencereSayisi: 50);
  print(bogazVilla.garajVarMi);
  print(bogazVilla.pencereSayisi);

  //Tip kontrolü
  if (bogazVilla is Saray) {
    // instance of
    print("Saraydır");
  } else {
    print("Saray değildir");
  }

  //Downcasting
  var ev = Ev(pencereSayisi: 10);
  var saray = ev as Saray;

  //Upcasting
  var s = Saray(kuleSayisi: 3, pencereSayisi: 100);
  Ev e = s;
}
