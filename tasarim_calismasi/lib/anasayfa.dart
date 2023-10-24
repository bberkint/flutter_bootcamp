import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

//left - start - leading
//right - end- trailing
class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pizza",
          style:
              TextStyle(color: yaziRenk1, fontFamily: "Pacifico", fontSize: 30),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              "Beef Cheese",
              style: TextStyle(
                  fontSize: 36, color: anaRenk, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.asset("resimler/pizza.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Cheese",
                    style: TextStyle(color: yaziRenk1),
                  ),
                  style: TextButton.styleFrom(backgroundColor: anaRenk),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sausage",
                    style: TextStyle(color: yaziRenk1),
                  ),
                  style: TextButton.styleFrom(backgroundColor: anaRenk),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Olive",
                    style: TextStyle(color: yaziRenk1),
                  ),
                  style: TextButton.styleFrom(backgroundColor: anaRenk),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "pepper",
                    style: TextStyle(color: yaziRenk1),
                  ),
                  style: TextButton.styleFrom(backgroundColor: anaRenk),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
