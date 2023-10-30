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

  @override
  void initState() {
    //  Sayfa ilk açıldığında çalışır

    super.initState();
    print("İnitState(); metodu çalıştı");
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
          ],
        ),
      ),
    );
  }
}
