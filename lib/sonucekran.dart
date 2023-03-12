import 'package:flutter/material.dart';

class Sonucekran extends StatefulWidget {
  bool sonuc;
  Sonucekran({required this.sonuc});

  @override
  _SonucekranState createState() => _SonucekranState();
}

class _SonucekranState extends State<Sonucekran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç ekranı"),
      ),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          widget.sonuc
              ? Image.asset("images/mutluyuz.PNG")
              : Image.asset("images/uzgunsurat.PNG"),
          Text(
            widget.sonuc ? "Kazandınız" : "Kaybettiniz",
            style: TextStyle(color: Colors.black54, fontSize: 36),
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "TEKRAR DENE",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
            ),
          ),
        ]),
      ),
    );
  }
}
