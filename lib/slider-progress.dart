import 'package:flutter/material.dart';
import 'package:flutter_application_1/scrollview.dart';

class SliderProgress extends StatefulWidget {
  const SliderProgress({Key? key}) : super(key: key);

  @override
  _SliderProgressState createState() => _SliderProgressState();
}

class _SliderProgressState extends State<SliderProgress> {
  bool prg = true;
  double ilerleme = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  prg = true;
                });
              },
              child: Text("Başla"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  prg = false;
                });
              },
              child: Text("Dur"),
            ),
          ],
        ),
        Visibility(
          visible: prg,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.deepPurple),
          ),
        ),
        Text("Sonuç :${ilerleme.toInt()}"),
        Slider(
          max: 100.0,
          min: 0.0,
          value: ilerleme,
          activeColor: Colors.indigo,
          inactiveColor: Colors.red,
          onChanged: (double i) {
            setState(() {
              ilerleme = i;
            });
          },
        ),
        ElevatedButton(
            onPressed: () {
              print("Slider ilerleme : ${ilerleme.toInt()}");
            },
            child: Text("Göster")),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scrollview(),
                    ));
              },
              child: Icon(Icons.arrow_forward),
            ),
          ],
        )
      ]),
    );
  }
}
