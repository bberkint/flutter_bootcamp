import 'package:calisma_yapisi/bottom_navigation_kullanimi/sayfa1.dart';
import 'package:calisma_yapisi/bottom_navigation_kullanimi/sayfa2.dart';
import 'package:calisma_yapisi/bottom_navigation_kullanimi/sayfa3.dart';
import 'package:flutter/material.dart';

class BottomNavigationAnasayfa extends StatefulWidget {
  const BottomNavigationAnasayfa({super.key});

  @override
  State<BottomNavigationAnasayfa> createState() =>
      _BottomNavigationAnasayfaState();
}

class _BottomNavigationAnasayfaState extends State<BottomNavigationAnasayfa> {
  int secilenIndeks = 0;
  var sayfalar = [const Sayfa1(), const Sayfa2(), const Sayfa3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bottom Navigation",
          style: TextStyle(color: Colors.purple),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: sayfalar[secilenIndeks],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one_outlined),
            label: "Bir",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_two_outlined), label: "İki"),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_3_outlined), label: "Üç"),
        ],
        currentIndex: secilenIndeks,
        backgroundColor: Colors.deepPurpleAccent,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white38,
        onTap: (indeks) {
          setState(() {
            secilenIndeks = indeks;
          });
        },
      ),
    );
  }
}
