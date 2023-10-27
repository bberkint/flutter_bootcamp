import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Odev3 extends StatefulWidget {
  const Odev3({super.key});

  @override
  State<Odev3> createState() => _Odev3State();
}

class _Odev3State extends State<Odev3> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          d!.filmMain,
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            fontFamily: "Pacifico",
            color: Colors.green,
          ),
        ),
        backgroundColor: Colors.tealAccent,
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(
              child: Image.asset(
                "resimler/komedi.jpg",
                height: 300,
                width: 500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonSpecial(
                  icerik: d.kategori,
                  buttonIcerik: d.butonYazi2,
                ),
                ButtonSpecial(
                  icerik: d.filmTarih,
                  buttonIcerik: d.butonYazi3,
                ),
                ButtonSpecial(
                  icerik: d.yonetmen,
                  buttonIcerik: d.butonYazi4,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 19.0),
            child: Column(
              children: [
                Text(
                  "Kevin accidentally boards a flight to New York City and gets separated from his family who are on their way to Miami. He then bumps into two of his old enemies, who plan to rob a toy store.",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: TextButton(
              onPressed: () {
                print("Added to Favorites");
              },
              child: Text(
                "Add To Favorites",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          )
        ],
      ),
    );
  }
}

class ButtonSpecial extends StatelessWidget {
  String icerik;
  String buttonIcerik;

  ButtonSpecial({required this.icerik, required this.buttonIcerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print(buttonIcerik);
      },
      child: Text(
        icerik,
        style: TextStyle(
          color: Colors.green,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Colors.tealAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      ),
    );
  }
}
