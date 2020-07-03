//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
//        backgroundColor: Colors.tealAccent,
          body: GavvalaPage()),
    );
  }
}

class GavvalaPage extends StatefulWidget {
  @override
  _GavvalaPageState createState() => _GavvalaPageState();
}

class _GavvalaPageState extends State<GavvalaPage> {
  int image = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Text(
              'Gavvalu',
              style: TextStyle(
                fontFamily: "Chewy",
                color: Colors.white,
                fontSize: 60,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                image = Random().nextInt(8) + 1;
              });
            },
            child: Image(
              image: AssetImage("images/shell$image.png"),
            ),
          ),
        ],
      ),
    );
  }
}
