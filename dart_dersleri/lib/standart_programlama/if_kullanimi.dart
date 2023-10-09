void main(List<String> args) {
  int yas = 23;
  String isim = "Berkin";

  if (yas >= 18) {
    print("$isim reşit.");
  } else {
    print("Reşit değilsiniz");
  }

  if (isim == "Berkinn") {
    print("Merhaba Berkin");
  } else {
    print("Tanınmayan kişi");
  }

  String ka = "admin";
  int s = 12345;

  if (ka == "admin" && s == 123456) {
    print("Hosşeldiniz");
  } else {
    print("Hatalı giriş");
  }

  int sayi = 10;
  if (sayi == 9 || sayi == 10) {
    print("Sayi 9 veya 10 dur.");
  } else {
    print("Sayı 9 veya 10 değildir.");
  }
}
