import 'package:flutter/material.dart';
import 'package:flutter_application_1/dropdown.dart';

class Scrollview extends StatelessWidget {
  const Scrollview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("scrollview"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300,
                height: 500,
                color: Colors.red,
              ),
              Container(
                width: 300,
                height: 500,
                color: Colors.blue,
              ),
              Container(
                width: 300,
                height: 500,
                color: Colors.green,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dropdown(),
                          ));
                    },
                    child: Icon(Icons.arrow_forward),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
