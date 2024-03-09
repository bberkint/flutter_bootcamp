import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HaritaSayfa extends StatefulWidget {
  const HaritaSayfa({super.key});

  @override
  State<HaritaSayfa> createState() => _HaritaSayfaState();
}

class _HaritaSayfaState extends State<HaritaSayfa> {
  Completer<GoogleMapController> haritaKontrol = Completer();

  //40.4609264,39.3979196,12z
  var baslangicKonum =
      const CameraPosition(target: LatLng(40.4609264, 39.3979196), zoom: 12);

  List<Marker> isaretler = <Marker>[];

  Future<void> konumGit() async {
    GoogleMapController controller = await haritaKontrol.future;
    var gidilecekKonum =
        const CameraPosition(target: LatLng(40.4466861, 39.4303146), zoom: 15);

    var gidilecekIsaret = Marker(
      markerId: MarkerId("id"),
      position: LatLng(40.4466861, 39.4303146),
      infoWindow:
          InfoWindow(title: "Gümüşhane", snippet: "Gümüşhane Akgedik Köyü"),
    );
    //40.4466861,39.4303146,12z

    setState(() {
      isaretler.add(gidilecekIsaret);
    });

    controller.animateCamera(CameraUpdate.newCameraPosition(gidilecekKonum));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Harita Kullanımı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: GoogleMap(
                initialCameraPosition: baslangicKonum,
                mapType: MapType.normal,
                markers: Set<Marker>.of(isaretler),
                onMapCreated: (GoogleMapController controller) {
                  haritaKontrol.complete(controller);
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  konumGit();
                },
                child: Text("Konuma Git")),
          ],
        ),
      ),
    );
  }
}
