import 'package:flutter/material.dart';
import 'package:flutter_application_1/tahminekran.dart';

class Tahminoyunmain extends StatefulWidget {
  const Tahminoyunmain({Key? key}) : super(key: key);

  @override
  _TahminoyunmainState createState() => _TahminoyunmainState();
}

class _TahminoyunmainState extends State<Tahminoyunmain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Tahmin Oyunu",
              style: TextStyle(color: Colors.black54, fontSize: 36),
            ),
            Image.asset("images/zar.PNG"),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text(
                  "OYUN BAŞLA",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tahminekran(),
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
