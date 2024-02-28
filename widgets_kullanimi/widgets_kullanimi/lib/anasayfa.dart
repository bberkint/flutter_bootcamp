import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

// Day 6 Codes
class _AnasayfaState extends State<Anasayfa> {
  var tfController = TextEditingController();
  String alinanVeri = "";
  String resimAdi = "mood.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(alinanVeri),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tfController,
                decoration: InputDecoration(
                  hintText: "Veri",
                ),
                keyboardType: TextInputType.number,
                obscureText: true,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  alinanVeri = tfController.text;
                });
              },
              child: Text("Veriyi Al"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      resimAdi = "mood.png";
                    });
                  },
                  child: Text("Resim 1"),
                ),
                Image.asset("resimler/$resimAdi"),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      resimAdi = "uzgun.png";
                    });
                  },
                  child: Text("Resim 2"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
