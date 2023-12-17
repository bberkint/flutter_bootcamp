import 'package:flutter/material.dart';

class KullaniciEtkilesimiSayfa extends StatefulWidget {
  const KullaniciEtkilesimiSayfa({super.key});

  @override
  State<KullaniciEtkilesimiSayfa> createState() =>
      _KullaniciEtkilesimiSayfaState();
}

class _KullaniciEtkilesimiSayfaState extends State<KullaniciEtkilesimiSayfa> {
  var tfControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kullanıcı Etkileşimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text("Silmek istiyor musunuz?"),
                      action: SnackBarAction(
                        label: "Evet",
                        onPressed: () {
                          SnackBar(
                            content: const Text("Silindi"),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: const Text("Silindi"),
                          ));
                        },
                      ),
                    ),
                  );
                },
                child: const Text("Snackbar")),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text(
                        "Silmek istiyor musunuz?",
                        style: TextStyle(color: Colors.indigoAccent),
                      ),
                      action: SnackBarAction(
                        label: "Evet",
                        textColor: Colors.red,
                        onPressed: () {
                          SnackBar(
                            content: const Text("Silindi"),
                            backgroundColor: Colors.white,
                          );
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: const Text(
                              "Silindi",
                              style: TextStyle(color: Colors.red),
                            ),
                            backgroundColor: Colors.white,
                          ));
                        },
                      ),
                    ),
                  );
                },
                child: const Text("Snackbar Özel")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Başlık"),
                        content: const Text("İçerik"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                print("İptal edilde");
                                Navigator.pop(context);
                              },
                              child: Text("İptal")),
                          TextButton(
                              onPressed: () {
                                print("Onaylandı");
                                Navigator.pop(context);
                              },
                              child: Text("Tamam")),
                        ],
                      );
                    },
                  );
                },
                child: const Text("Alert")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Kayıt İşlemi"),
                        content: TextField(
                          controller: tfControl,
                          decoration: InputDecoration(hintText: "Veri"),
                        ),
                        backgroundColor: Colors.grey,
                        actions: [
                          TextButton(
                              onPressed: () {
                                print("İptal edilde");
                                Navigator.pop(context);
                              },
                              child: Text(
                                "İptal",
                                style: TextStyle(color: Colors.black),
                              )),
                          TextButton(
                              onPressed: () {
                                print("Alınan Veri : ${tfControl.text}");
                                Navigator.pop(context);
                                tfControl.text = "";
                              },
                              child: Text(
                                "Kaydet",
                                style: TextStyle(color: Colors.black),
                              )),
                        ],
                      );
                    },
                  );
                },
                child: const Text("Alert Özel")),
          ],
        ),
      ),
    );
  }
}
