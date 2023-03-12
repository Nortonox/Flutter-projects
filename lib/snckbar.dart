import 'package:flutter/material.dart';
import 'package:flutter_application_1/popupwidget.dart';

class Snckbar extends StatefulWidget {
  const Snckbar({Key? key}) : super(key: key);

  @override
  _SnckbarState createState() => _SnckbarState();
}

class _SnckbarState extends State<Snckbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  "İnternet Bağlantısı yok !",
                  style: TextStyle(color: Colors.indigoAccent),
                ),
                backgroundColor: Colors.white,
                duration: Duration(seconds: 5),
                action: SnackBarAction(
                  label: "TEKRAR DENE",
                  textColor: Colors.red,
                  onPressed: () {
                    print("TEKRAR DENENDİ");
                  },
                ),
              ));
            },
            child: Text("Snackbar Özel"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Popupwidget(),
                      ));
                },
                child: Icon(Icons.arrow_forward),
              ),
            ],
          )
        ],
      ),
    );
  }
}
