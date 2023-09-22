import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String flutterText = "Rels B";
  int index2 = 0;
  List<String> collections = ['Este', 'Es', 'Rels B'];
  List<String> urlImgs = [
    'assets/relsb1.jpeg',
    'assets/relsb2.jpg',
    'assets/relsb3.jpg'
  ];
  int index = 0;

  void onPressButton() {
    setState(() {
      index = index < urlImgs.length - 1 ? index + 1 : 0;
      flutterText = collections[index];
      index2 = index2 < 4 ? index2 + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App Stateful Widget Imagenes"),
          backgroundColor: Color.fromARGB(255, 22, 117, 206),
        ),
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(flutterText, style: TextStyle(fontSize: 40.0)),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Image.asset(
                urlImgs[index],
                width: 200.0,
                height: 400.0,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              ElevatedButton(
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: onPressButton,
              )
            ],
          )),
        ));
  }
}