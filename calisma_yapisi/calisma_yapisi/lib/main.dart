import 'package:calisma_yapisi/anasayfa.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_kullanimi/bottom_navigation_anasayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomNavigationAnasayfa(),
    );
  }
}
