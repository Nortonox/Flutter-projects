import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/sonucekran.dart';

class Tahminekran extends StatefulWidget {
  const Tahminekran({Key? key}) : super(key: key);

  @override
  _TahminekranState createState() => _TahminekranState();
}

class _TahminekranState extends State<Tahminekran> {
  var tftahmin = TextEditingController();
  int rasgelesayi = 0;
  int kalanhak = 5;
  String yonlendirme = "";
  @override
  void initState() {
    super.initState();
    rasgelesayi = Random().nextInt(101);
    print("Rasgele Sayı :$rasgelesayi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tahmin Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Kalan Hak : $kalanhak",
              style: TextStyle(color: Colors.pink, fontSize: 30),
            ),
            Text(
              "Yardım: $yonlendirme",
              style: TextStyle(color: Colors.black54, fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: tftahmin,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Tahmin",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text(
                  "TAHMİN ET",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.pink),
                onPressed: () {
                  setState(() {
                    kalanhak = kalanhak - 1;
                  });

                  int tahmin = int.parse(tftahmin.text);

                  if (tahmin == rasgelesayi) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Sonucekran(sonuc: true)));
                    return;
                  }
                  if (tahmin > rasgelesayi) {
                    setState(() {
                      yonlendirme = "Tahmini Azalt";
                    });
                  }
                  if (tahmin < rasgelesayi) {
                    setState(() {
                      yonlendirme = "Tahmini Arttır";
                    });
                  }
                  if (kalanhak == 0) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sonucekran(sonuc: false),
                        ));
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
