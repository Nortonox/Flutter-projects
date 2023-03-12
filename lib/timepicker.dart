import 'package:flutter/material.dart';
import 'package:flutter_application_1/snckbar.dart';
import 'package:flutter_application_1/tahminoyunmain.dart';

class Timepicker extends StatefulWidget {
  const Timepicker({Key? key}) : super(key: key);

  @override
  _TimepickerState createState() => _TimepickerState();
}

class _TimepickerState extends State<Timepicker> {
  var tftarih = TextEditingController();
  var tfsaat = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timepicker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: tfsaat,
            decoration: InputDecoration(hintText: "Saat Giriniz"),
            onTap: () {
              showTimePicker(
                context: context,
                initialTime: TimeOfDay.fromDateTime(DateTime.now()),
              ).then((alinansaat) {
                setState(() {
                  tfsaat.text = "${alinansaat!.hour}:${alinansaat.minute}";
                });
              });
            },
          ),
          TextField(
            controller: tftarih,
            decoration: InputDecoration(hintText: "Tarih giriniz"),
            onTap: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2050),
              ).then((alinantarih) {
                setState(() {
                  tftarih.text = "${alinantarih!.day}/${alinantarih.month}";
                });
              });
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
                        builder: (context) => Snckbar(),
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
