import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var tfController = TextEditingController();
  String alinanVeri = "";
  String resimAdi = "mood.png";
  bool switchKontrol = false;
  bool checkboxKontrol = false;
  int radioDeger = 0;
  bool progressKontrol = false;
  double ilerleme = 30.0;
  var tfSaat = TextEditingController();
  var tfTarih = TextEditingController();

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 200,
                  child: SwitchListTile(
                    title: const Text("Dart"),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: switchKontrol,
                    onChanged: (veri) {
                      setState(() {
                        switchKontrol = veri;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: CheckboxListTile(
                    title: const Text("Flutter"),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: checkboxKontrol,
                    onChanged: (veri) {
                      setState(() {
                        checkboxKontrol = veri!;
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 200,
                  child: RadioListTile(
                    title: const Text("Galatasaray"),
                    value: 1,
                    groupValue: radioDeger,
                    onChanged: (veri) {
                      setState(() {
                        radioDeger = veri!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: RadioListTile(
                    title: const Text(
                      "Real Madrid",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 2,
                    groupValue: radioDeger,
                    onChanged: (veri) {
                      setState(() {
                        radioDeger = veri!;
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      progressKontrol = true;
                    });
                  },
                  child: Text("Başla"),
                ),
                Visibility(
                    visible: progressKontrol,
                    child: const CircularProgressIndicator()),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      progressKontrol = false;
                    });
                  },
                  child: Text("Dur"),
                ),
              ],
            ),
            Text(ilerleme.toInt().toString()),
            Slider(
              max: 100.0,
              min: 0.0,
              value: ilerleme,
              onChanged: (veri) {
                setState(() {
                  ilerleme = veri;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 120,
                  child: TextField(
                    controller: tfSaat,
                    decoration: const InputDecoration(
                      hintText: "Saat",
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.fromDateTime(DateTime.now()))
                        .then((value) {
                      tfSaat.text = "${value!.hour} : ${value.minute}";
                    });
                  },
                  icon: const Icon(Icons.access_time),
                ),
                SizedBox(
                  width: 120,
                  child: TextField(
                    controller: tfTarih,
                    decoration: const InputDecoration(
                      hintText: "Tarih",
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2030))
                      ..then((value) {
                        tfTarih.text =
                            "${value!.day} / ${value.month} / ${value.year}";
                      });
                  },
                  icon: const Icon(Icons.date_range),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                print("Switch durum : $switchKontrol");
                print("CheckBox durum : $checkboxKontrol");
                print("Radio Durum : $radioDeger");
                print("Slider Durum : $ilerleme");
              },
              child: Text("Göster"),
            ),
          ],
        ),
      ),
    );
  }
}
