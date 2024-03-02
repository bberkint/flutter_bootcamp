import 'package:block_pattern_kullanimi/data/repo/matematikRepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int> {
  AnasayfaCubit() : super(0);

  var mrepo = MatematikRepository();

  void toplamaYap(String alinanSayi1, String alinanSayi2) {
    emit(mrepo.toplamaYap(alinanSayi1, alinanSayi2));
  }

  void carpmaYap(String alinanSayi1, String alinanSayi2) {
    emit(mrepo.carpmaYap(alinanSayi1, alinanSayi2));
  }
}
