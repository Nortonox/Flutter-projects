import 'package:flutter/material.dart';
import 'package:flutter_application_1/timepicker.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  var ulkelerlist = <String>[];
  String secilenulke = "Türkiye";
  @override
  void initState() {
    super.initState();
    ulkelerlist.add("Türkiye");
    ulkelerlist.add("İtalya");
    ulkelerlist.add("Almanya");
    ulkelerlist.add("Rusya");
    ulkelerlist.add("Çin");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              value: secilenulke,
              items: ulkelerlist.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    "Ülke :$value",
                    style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                  ),
                );
              }).toList(),
              icon: Icon(Icons.arrow_drop_down),
              onChanged: (String? secilenveri) {
                setState(() {
                  secilenulke = secilenveri!;
                });
              },
            ),
            Text("Seçilen ülke :$secilenulke"),
            ElevatedButton(
              onPressed: (() {
                print("En son seçilen ülke:$secilenulke");
              }),
              child: Text("Yazdır"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Timepicker(),
                        ));
                  },
                  child: Icon(Icons.arrow_forward),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
