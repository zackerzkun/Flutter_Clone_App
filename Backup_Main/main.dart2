import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Galeri Blackpink'),
          ),
          body: GridView.count(crossAxisCount: 3, scrollDirection: Axis.vertical, children: <Widget>[
            // Batch 1 ( 3x3 )
            for (var i = 0; i < 3; i++)
              Container(
                child: Image.asset('assets/images/Bp1.jpg'),
                padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
              ),
            for (var i = 0; i < 3; i++)
              Container(
                child: Image.asset('assets/images/Bp2.jpg'),
                padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
              ),
            for (var i = 0; i < 3; i++)
              Container(
                child: Image.asset('assets/images/Bp3.jpg'),
                padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
              ),
            // Batch 2 ( 3x3 )
            for (var i = 0; i < 3; i++)
              Container(
                child: Image.asset('assets/images/Bp4.jpg'),
                padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
              ),
            for (var i = 0; i < 3; i++)
              Container(
                child: Image.asset('assets/images/Bp5.jpg'),
                padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
              ),
            for (var i = 0; i < 3; i++)
              Container(
                child: Image.asset('assets/images/Bp6.jpg'),
                padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
              ),
            // Batch 3 (3x3)
            for (var i = 0; i < 3; i++)
              Container(
                child: Image.asset('assets/images/Bp1.jpg'),
                padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
              ),
            for (var i = 0; i < 3; i++)
              Container(
                child: Image.asset('assets/images/Bp6.jpg'),
                padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
              ),
            for (var i = 0; i < 3; i++)
              Container(
                child: Image.asset('assets/images/Bp4.jpg'),
                padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
              ),
          ])),
    );
  }
}
