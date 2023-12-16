import 'package:flutter/material.dart';

class KullaniciEtkilesimiSayfa extends StatefulWidget {
  const KullaniciEtkilesimiSayfa({super.key});

  @override
  State<KullaniciEtkilesimiSayfa> createState() =>
      _KullaniciEtkilesimiSayfaState();
}

class _KullaniciEtkilesimiSayfaState extends State<KullaniciEtkilesimiSayfa> {
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
            ElevatedButton(onPressed: () {}, child: const Text("Alert")),
            ElevatedButton(
                onPressed: () {}, child: const Text("Snackbar Özel")),
          ],
        ),
      ),
    );
  }
}
