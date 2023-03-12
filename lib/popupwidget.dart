import 'package:flutter/material.dart';
import 'package:flutter_application_1/tahminoyunmain.dart';

class Popupwidget extends StatefulWidget {
  const Popupwidget({Key? key}) : super(key: key);

  @override
  _PopupwidgetState createState() => _PopupwidgetState();
}

class _PopupwidgetState extends State<Popupwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Popup"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PopupMenuButton(
              child: Icon(Icons.open_in_new),
              itemBuilder: (context) => [
                PopupMenuItem(
                    value: 1,
                    child: Text(
                      "Sil",
                      style: TextStyle(color: Colors.red),
                    )),
                PopupMenuItem(
                    value: 2,
                    child: Text(
                      "Güncelle",
                      style: TextStyle(color: Colors.indigo),
                    )),
              ],
              onCanceled: () {
                print("Seçim yapılmadı");
              },
              onSelected: (menuItemValue) {
                if (menuItemValue == 1) {
                  print("sil seçildi");
                }
                if (menuItemValue == 2) {
                  print("Güncelle Seçildi");
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Tahminoyunmain(),
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
