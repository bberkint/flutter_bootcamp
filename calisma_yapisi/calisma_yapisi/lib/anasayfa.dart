import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;
  bool kontrol = false;

  @override
  void initState() {
    //  Sayfa ilk açıldığında çalışır

    super.initState();
    print("İnitState(); metodu çalıştı");
  }

  Future<int> toplama(int sayi1, int sayi2) async {
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç : $sayac"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  sayac += 1;
                });
                print("Tıklandı");
              },
              child: const Text("Tıkla"),
            ),
            ElevatedButton(
              onPressed: () {
                var kisi =
                    Kisiler(ad: "Berkin", yas: 23, boy: 1.81, bekar: true);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OyunEkrani(
                              kisi: kisi,
                            ))).then((value) {
                  print("Anasayfaya Dönüldü");
                });
              },
              child: const Text("Başla"),
            ),
            Visibility(visible: kontrol, child: const Text("Merhaba")),
            (() {
              if (kontrol) {
                return const Text(
                  "Merhaba",
                  style: TextStyle(color: Colors.green),
                );
              } else {
                return const Text(
                  "Güle Güle",
                  style: TextStyle(color: Colors.purple),
                );
              }
            }()),
            Text(
              kontrol ? "Merhaba" : "Güle Güle",
              style: TextStyle(color: kontrol ? Colors.yellow : Colors.red),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  kontrol = true;
                });
              },
              child: const Text("Durum 1 (True)"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  kontrol = false;
                });
              },
              child: const Text("Durum 1 (False)"),
            ),
            FutureBuilder<int>(
              future: toplama(10, 20),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Text("Hata oluştu");
                }
                if (snapshot.hasData) {
                  return Text("Sonuç : ${snapshot.data}");
                } else {
                  return Text("Sonuç yok");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
